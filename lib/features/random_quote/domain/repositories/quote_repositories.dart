import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/quote.dart';

abstract class QuoteRepositories {
  Future<Either<Failure, Quote>> getRandomQuote();
}
