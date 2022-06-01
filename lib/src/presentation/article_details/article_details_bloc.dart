import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';
// import 'package:test_flutter_app/src/domain/entities/article.dart';

part 'article_details_bloc.freezed.dart';

part 'article_details_event.dart';

part 'article_details_state.dart';

class ArticleDetailsBloc
    extends Bloc<ArticleDetailsEvent, ArticleDetailsState> {
  // extends Bloc<RemoteArticlesEvent, RemotteArticlesState> {
  //final GetArticlesUsecases _getArticlesUsecases;

  Future<void> _getBreakingNewsArticle(
      ArticleDetailsEvent event, Emitter<ArticleDetailsState> emit) async {}

  ArticleDetailsBloc() : super(ArticleDetailsState.init()) {
    //this._getArticlesUsecases)
    //: super(RemoteArticlesLoading()) {
    on<ArticleDetailsEvent>(_getBreakingNewsArticle);
  }
}
