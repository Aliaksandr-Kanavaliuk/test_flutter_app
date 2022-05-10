//import 'dart:html';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';
import 'package:test_flutter_app/src/core/params/article_request.dart';
import 'package:test_flutter_app/src/core/resources/data_state.dart';
import 'package:test_flutter_app/src/domain/repositories/article_repository.dart';
import 'package:test_flutter_app/src/domain/usecases/get_articles_usecases.dart';
//import 'dart:async';

import '../../../domain/entities/article.dart';
part 'remote_articles_bloc.freezed.dart';
part 'remote_articles_event.dart';

part 'remote_articles_state.dart';

class RemoteArticlesBloc
    extends BlocWithState<RemoteArticlesEvent, RemotteArticlesState> {
  // extends Bloc<RemoteArticlesEvent, RemotteArticlesState> {
  final GetArticlesUsecases _getArticlesUsecases;

  RemoteArticlesBloc(this._getArticlesUsecases)
      : super(RemoteArticlesLoadingState()) {
    on<RemoteArticlesEvent>(_getBreakingNewsArticle);
    // on((GetArticles, emit) {
    //   emit(
    //     // state.articles.add(
    //     //   Article(
    //     //     id: 1,
    //     //     source: null,
    //     //     author: 'jflkdsja',
    //     //     description: 'jflkdsaj',
    //     //     url: 'fjldasjflka',
    //     //     urlToImage: 'fjkldajflk',
    //     //     title: 'fdsajflj',
    //     //     publishedAt: 'fdsafas',
    //     //     content: 'jflkdsajflkjal',
    //     //   ),
    //     ),
    //   ); //RemotteArticlesState());
    //emit(_getBreakingNewsArticle(newMethod(event)));
    //emit(_getBreakingNewsArticle());
  }
  //);

  final List<Article> _atrcles = [];
  int _page = 1;
  static const int _pageSize = 20;

  // @override
  // Stream<RemotteArticlesState> mapEventToState(
  //     RemoteArticlesEvent event) async* {
  //   if (event is GetArticles) {
  //     yield* _getBreakingNewsArticle(newMethod(event));
  //     //yield* _getBreakingNewsArticle(event);
  //   }
  // }

  _GetArticlesEvent newMethod(_GetArticlesEvent event) => event;

  // Stream<RemotteArticlesState> _getBreakingNewsArticle(
  Future<void> _getBreakingNewsArticle(
      RemoteArticlesEvent event, Emitter<RemotteArticlesState> emit) async {
    final dataState =
        await _getArticlesUsecases(params: ArticleRequestParams(page: _page));
    // final t = await _getArticlesUsecases.call();
    //final articleRepository = BlocProvider.of<ArticleRepository>(context);
    // dataState.data
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      final articles = dataState.data;
      final noMoreData = articles!.length < _pageSize;
      _atrcles.addAll(articles);
      _page++;
      emit(RemoteArticlesDoneState(noMoreData: noMoreData, articles: _atrcles));

      //yield RemoteArticlesDone(_atrcles, noMoreData: noMoreData);
    } else {
      emit(RemoteArticlesErrorState(dataState.error!));
    }
    // emit();

    // yield* runBlocProcess(() async* {
    //   final dataState =
    //       await _getArticlesUsecases(params: ArticleRequestParams(page: _page));

    //   if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
    //     final articles = dataState.data;
    //     final noMoreData = articles!.length < _pageSize;
    //     _atrcles.addAll(articles);
    //     _page++;

    //     yield RemoteArticlesDone(_atrcles, noMoreData: noMoreData);
    //   }
    //   if (dataState is DataFailed && dataState.error != null) {
    //     yield RemoteArticlesError(dataState.error!);
    //   }
    // });
  }
}
