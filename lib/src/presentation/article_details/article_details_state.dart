part of 'article_details_bloc.dart';

abstract class ArticleDetailsState extends Equatable {
  final Article? article;
  // final bool? noMoreData;
  // final DioError? error;

  ArticleDetailsState({this.article});

  @override
  List<Object> get props => [article!];
}

class ArticleDetailsMarkedToSave extends ArticleDetailsState {
  ArticleDetailsMarkedToSave();
}

// class RemoteArticlesDone extends ArticleDetailsState {
//   RemoteArticlesDone(List<Article> articles, {bool? noMoreData})
//       : super(articles: articles, noMoreData: noMoreData!);
// }

// class RemoteArticlesError extends ArticleDetailsState {
//   RemoteArticlesError(DioError error) : super(error: error);
// }
