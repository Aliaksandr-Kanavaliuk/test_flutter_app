import 'package:test_flutter_app/src/core/params/articles_request_params.dart';
import 'package:test_flutter_app/src/core/resources/data_state.dart';
import 'package:test_flutter_app/src/core/usecases/usecase.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/domain/repositories/article_repository.dart';

class GetArticlesUsecases
    implements UseCase<DataState<List<Article>>, ArticlesRequestParams> {
  final ArticleRepository _articleRepository;

  GetArticlesUsecases(this._articleRepository);

  @override
  Future<DataState<List<Article>>> call({ArticlesRequestParams? params}) {
    return _articleRepository.getBreakeingNewArticles(params!);
  }
}
