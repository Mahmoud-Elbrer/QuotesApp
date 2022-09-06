import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/quote.dart';
import '../repositories/quote_repositories.dart';

class GetRandomQuote implements UserCase<Quote, NoParams> {
  final QuoteRepositories? quoteRepositories;

  GetRandomQuote({required this.quoteRepositories});

  @override
  Future<Either<Failure, Quote>> call(NoParams params) {
   return quoteRepositories!.getRandomQuote();
  }
}
