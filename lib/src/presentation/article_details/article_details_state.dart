part of 'article_details_bloc.dart';

@freezed
class ArticleDetailsState with _$ArticleDetailsState {
  const factory ArticleDetailsState.init() =
      ArticlesDetailsInitState; //{required Article article}) =
  //NewArticleState; //) = ArticlesDetailsInitState;
  const factory ArticleDetailsState.newArticle({required Article article}) =
      NewArticleState;
  const factory ArticleDetailsState.markArticleToSave() =
      ArticleMarkedToSaveState;
}
