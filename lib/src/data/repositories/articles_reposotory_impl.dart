//import 'dart:html';

import 'dart:io';
import 'package:dio/dio.dart';
// import 'package:test_flutter_app/src/data/datasources/local_storage/local_db.dart';
import 'package:test_flutter_app/src/data/datasources/local_storage/local_starage.dart';
import 'package:test_flutter_app/src/data/datasources/remote/news_api_service.dart';
import 'package:test_flutter_app/src/data/repositories/articles_reposotory_impl.mapping.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/core/resources/data_state.dart';
import 'package:test_flutter_app/src/core/params/articles_request_params.dart';
import 'package:test_flutter_app/src/domain/repositories/article_repository.dart';
import 'package:test_flutter_app/src/injector.dart';

class ArticlesReposotoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  const ArticlesReposotoryImpl(this._newsApiService);

  @override
  Future<DataFailed<Article>> getArticleById() async {
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<Article>>> getBreakeingNewArticles(
    ArticlesRequestParams params,
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
        final ArticlesLocalStarage _st = injector.get<ArticlesLocalStarage>();
        //final ArticlesLocalDb _db = injector.get<ArticlesLocalDb>();

        final articles = HttpResponse.data.articles ?? [];
        final articleEntities = articles.map((e) => e.toEntity()).toList();
        //await _db.insertListOfArticles(articleEntities);
        await _st.saveListOfArticlesToStorage(articleEntities);

        return DataSuccess(articleEntities);
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
