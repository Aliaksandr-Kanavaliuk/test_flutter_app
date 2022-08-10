// import 'package:dio/dio.dart';
// import 'package:equatable/equatable.dart';
// import 'package:test_flutter_app/src/domain/entities/article.dart';
//import 'package:bloc/bloc.dart';

part of 'remote_articles_bloc.dart';

@freezed
class RemotteArticlesState with _$RemotteArticlesState {
  const factory RemotteArticlesState.loading() = RemoteArticlesLoadingState;
  const factory RemotteArticlesState.done(
      {required List<Article> articles,
      required bool noMoreData}) = RemoteArticlesDoneState;
  const factory RemotteArticlesState.error(DioError error) =
      RemoteArticlesErrorState;
  const factory RemotteArticlesState.currentInactivityTime({
    required String currentInactivityTime,
  }) = GetInactivityTimeState;
}

// abstract class RemotteArticlesState {
//   //extends Equatable {
//   final List<Article>? articles;
//   final bool? noMoreData;
//   final DioError? error;

//   RemotteArticlesState({
//     required this.articles,
//     required this.error,
//     required this.noMoreData,
//   });

//   // @override
//   // List<Object> get props => [articles!, noMoreData!, error!];
// }

// class RemoteArticlesLoading {
//   //extends RemotteArticlesState {
//   RemoteArticlesLoading(); // : super(null, null, false);
// }

// class RemoteArticlesDone {
//   //extends RemotteArticlesState {
//   RemoteArticlesDone(List<Article> articles, {bool? noMoreData});
//   // : super(articles: articles, noMoreData: noMoreData!);
// }

// class RemoteArticlesError {
//   //extends RemotteArticlesState {
//   RemoteArticlesError(DioError error); // : super(error: error);
// }
