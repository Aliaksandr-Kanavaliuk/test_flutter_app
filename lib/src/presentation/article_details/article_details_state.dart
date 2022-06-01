part of 'article_details_bloc.dart';

@freezed
class ArticleDetailsState with _$ArticleDetailsState {
  const factory ArticleDetailsState.init() = ArticlesDetailsInitState;
  const factory ArticleDetailsState.markArticleToSave() =
      ArticleMarkedToSaveState;
  // const factory ArticleDetailsState.done(
  //     {required List<Article> articles,
  //     required bool noMoreData}) = RemoteArticlesDoneState;
  // const factory ArticleDetailsState.error(DioError error) =
  //     RemoteArticlesErrorState;
  // const factory ArticleDetailsState.currentInactivityTime({
  //   required String currentInactivityTime,
  // }) = GetInactivityTimeState;
}
// @freezed
// abstract class ArticleDetailsState extends Equatable {
//   final Article? article;
//   // final bool? noMoreData;
//   // final DioError? error;

//   ArticleDetailsState({this.article});

//   @override
//   List<Object> get props => [article!];
// }

// class ArticleDetailsMarkedToSave extends ArticleDetailsState {
//   ArticleDetailsMarkedToSave();
// }

