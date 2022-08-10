part of 'article_details_bloc.dart';

@freezed
class ArticleDetailsEvent with _$ArticleDetailsEvent {
  const factory ArticleDetailsEvent.initial() = _ArticleDetailsInitioalEvent;
  const factory ArticleDetailsEvent.getArticle({required String id}) =
      _ArticleDetailsGetArticleEvent;
  const factory ArticleDetailsEvent.markedToSave() = _ArticleMarkedToSaveEvent;
}
