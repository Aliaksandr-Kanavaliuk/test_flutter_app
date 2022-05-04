//import 'dart:html';

// import 'dart:_internal';

import 'dart:io';

import 'package:dio/dio.dart';
//import 'package:retrofit/dio.dart';
import 'package:test_flutter_app/src/data/datasources/remote/news_api_service.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/core/resources/data_state.dart';
import 'package:test_flutter_app/src/core/params/article_request.dart';
import 'package:test_flutter_app/src/domain/repositories/article_repository.dart';

class ArticlesReposotoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  const ArticlesReposotoryImpl(this._newsApiService);

  @override
  Future<DataState<List<Article>>> getBreakeingNewArticles(
    ArticleRequestParams params,
  ) async {
    try {
      final HttpResponse = await _newsApiService.getBreakingNewsArticles(
        apiKey: params.apiKey,
        country: params.country,
        category: params.category,
        page: params.page,
        pageSize: params.pageSize,
      );

      if (HttpResponse.response.statusCode == HttpStatus.ok &&
          HttpResponse.data.articles != null) {
        return DataSuccess(HttpResponse.data.articles!);
      } else {
        return DataFailed(
          DioError(
              error: HttpResponse.response.statusMessage,
              response: HttpResponse.response,
              type: DioErrorType.response,
              requestOptions: HttpResponse.response.requestOptions),
        );
      }
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
