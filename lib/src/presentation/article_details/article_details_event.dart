part of 'article_details_bloc.dart';

@freezed
class ArticleDetailsEvent with _$ArticleDetailsEvent {
  const factory ArticleDetailsEvent.initial() = _ArticleDetailsInitioalEvent;
  const factory ArticleDetailsEvent.markedToSave() = ArticleMarkedToSaveEvent;
}
// abstract class ArticleDetailsEvent extends Equatable {
//   //const RemoteArticlesEvent();

//   @override
//   List<Object> get props => [];
// }

// class GetArticles extends RemoteArticlesEvent {
//   const GetArticles();
// }