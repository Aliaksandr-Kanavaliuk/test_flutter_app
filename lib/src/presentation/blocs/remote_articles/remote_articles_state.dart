// import 'package:dio/dio.dart';
// import 'package:equatable/equatable.dart';
// import 'package:test_flutter_app/src/domain/entities/article.dart';
//import 'package:bloc/bloc.dart';

part of 'remote_articles_bloc.dart';

abstract class RemotteArticlesState extends Equatable {
  final List<Article>? articles;
  final bool? noMoreData;
  final DioError? error;

  RemotteArticlesState({this.articles, this.error, this.noMoreData});

  @override
  List<Object> get props => [articles!, noMoreData!, error!];
}

class RemoteArticlesLoading extends RemotteArticlesState {
  RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemotteArticlesState {
  RemoteArticlesDone(List<Article> articles, {bool? noMoreData})
      : super(articles: articles, noMoreData: noMoreData!);
}

class RemoteArticlesError extends RemotteArticlesState {
  RemoteArticlesError(DioError error) : super(error: error);
}