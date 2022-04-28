import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';
import 'package:test_flutter_app/src/core/params/article_request.dart';
import 'package:test_flutter_app/src/core/resources/data_state.dart';
import 'package:test_flutter_app/src/domain/usecases/get_articles_usecases.dart';
//import 'dart:async';

import '../../../domain/entities/article.dart';

part 'remote_articles_event.dart';

part 'remote_articles_state.dart';

class RemoteArticlesBloc
    extends BlocWithState<RemoteArticlesEvent, RemotteArticlesState> {
  final GetArticlesUsecases _getArticlesUsecases;

  RemoteArticlesBloc(this._getArticlesUsecases)
      : super(RemoteArticlesLoading());

  final List<Article> _atrcles = [];
  int _page = 1;
  static const int _pageSize = 20;

  @override
  Stream<RemotteArticlesState> mapEventToState(
      RemoteArticlesEvent event) async* {
    if (event is GetArticles) {
      //yield* _getBreakingNewsArticle(newMethod(event));
      yield* _getBreakingNewsArticle(event);
    }
  }

  // GetArticles newMethod(GetArticles event) => event;

  Stream<RemotteArticlesState> _getBreakingNewsArticle(
      RemoteArticlesEvent event) async* {
    yield* runBlocProcess(() async* {
      final dataState =
          await _getArticlesUsecases(params: ArticleRequestParams(page: _page));

      if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
        final articles = dataState.data;
        final noMoreData = articles!.length < _pageSize;
        _atrcles.addAll(articles);
        _page++;

        yield RemoteArticlesDone(_atrcles, noMoreData: noMoreData);
      }
      if (dataState is DataFailed && dataState.error != null) {
        yield RemoteArticlesError(dataState.error!);
      }
    });
  }
}
