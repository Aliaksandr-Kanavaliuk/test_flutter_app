import 'package:test_flutter_app/src/core/params/articles_request_params.dart';
import 'package:test_flutter_app/src/core/resources/data_state.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<Article>>> getBreakeingNewArticles(
    ArticlesRequestParams params,
  );

  Future<DataFailed<Article>> getArticleById();
}
