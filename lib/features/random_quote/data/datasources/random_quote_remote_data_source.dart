import 'dart:convert';
import 'dart:html';

import '../../../../core/api/end_points.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/utils/app_strings.dart';
import '../models/quote_model.dart';
import 'package:http/http.dart' as http;

abstract class RandomQuoteRemoteDataSource {
  Future<QuoteModel> getRandomQuote();
}

class RandomQuoteRemoteDataSourceImpl extends RandomQuoteRemoteDataSource {
  http.Client client;
  RandomQuoteRemoteDataSourceImpl({required this.client});

  @override
  Future<QuoteModel> getRandomQuote() async {
    final randomQuoteUrl = Uri.parse(EndPoints.randomQuote);
    final response = await http.get(randomQuoteUrl,
        headers: {AppStrings.contentType: AppStrings.applicationJson});
    if (response.statusCode == 200) {
      return QuoteModel.fromJson(json.decode(response.body));
    } else {
      throw SeverException;
    }
  }
}
