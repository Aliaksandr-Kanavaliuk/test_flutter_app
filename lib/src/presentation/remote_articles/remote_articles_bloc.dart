//import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';
import 'package:test_flutter_app/src/core/params/articles_request_params.dart';
import 'package:test_flutter_app/src/core/resources/data_state.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/domain/usecases/get_articles_usecases.dart';
//import 'dart:async';

//import '../../../domain/entities/article.dart';
part 'remote_articles_bloc.freezed.dart';
part 'remote_articles_event.dart';

part 'remote_articles_state.dart';

class RemoteArticlesBloc
    extends BlocWithState<RemoteArticlesEvent, RemotteArticlesState> {
  final GetArticlesUsecases _getArticlesUsecases;

  RemoteArticlesBloc(this._getArticlesUsecases)
      : super(RemoteArticlesLoadingState()) {
    on<RemoteArticlesEvent>(_getBreakingNewsArticle);
  }

  final List<Article> _atrcles = [];
  int _page = 1;
  static const int _pageSize = 20;

  // _GetArticlesEvent newMethod(_GetArticlesEvent event) => event;

  Future<void> _getBreakingNewsArticle(
      RemoteArticlesEvent event, Emitter<RemotteArticlesState> emit) async {
    final dataState =
        await _getArticlesUsecases(params: ArticlesRequestParams(page: _page));
    // final t = await _getArticlesUsecases.call();
    //final articleRepository = BlocProvider.of<ArticleRepository>(context);
    // dataState.data
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      final articles = dataState.data;
      final noMoreData = articles!.length < _pageSize;
      _atrcles.addAll(articles);
      _page++;
      emit(RemoteArticlesDoneState(noMoreData: noMoreData, articles: _atrcles));
    } else {
      emit(RemoteArticlesErrorState(dataState.error!));
    }
  }
}
