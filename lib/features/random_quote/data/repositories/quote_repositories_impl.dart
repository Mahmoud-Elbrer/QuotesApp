import 'package:dartz/dartz.dart';
import 'package:project/features/random_quote/domain/entities/quote.dart';

import 'package:project/core/error/failure.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/quote_repositories.dart';
import '../datasources/random_quote_local_data_source.dart';
import '../datasources/random_quote_remote_data_source.dart';
import '../models/quote_model.dart';

class QuoteRepositoriesImpl extends QuoteRepositories {
  final NetworkInfo networkInfo;
  final RandomQuoteRemoteDataSource randomQuoteRemoteDataSource;
  final RandomQuoteLocalDataSource randomQuoteLocalDataSource;

  QuoteRepositoriesImpl(
      {required this.randomQuoteRemoteDataSource,
      required this.randomQuoteLocalDataSource,
      required this.networkInfo});
  @override
  Future<Either<Failure, Quote>> getRandomQuote() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteDataSource = await randomQuoteRemoteDataSource.getRandomQuote();
        randomQuoteLocalDataSource.cacheQuote(remoteDataSource);
        return Right(remoteDataSource);
      } on SeverException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final cacheRandomQuote = await randomQuoteLocalDataSource.getLastRandomQuote();
        return Right(cacheRandomQuote);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
