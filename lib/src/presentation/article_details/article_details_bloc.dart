import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';

part 'article_details_event.dart';

part 'article_details_state.dart';

class ArticleDetailsBloc
    extends BlocWithState<ArticleDetailsEvent, ArticleDetailsMarkedToSave> {
  // extends Bloc<RemoteArticlesEvent, RemotteArticlesState> {
  //final GetArticlesUsecases _getArticlesUsecases;

  Future<void> _getBreakingNewsArticle(ArticleDetailsEvent event,
      Emitter<ArticleDetailsMarkedToSave> emit) async {}

  ArticleDetailsBloc() : super(ArticleDetailsMarkedToSave()) {
    //this._getArticlesUsecases)
    //: super(RemoteArticlesLoading()) {
    on<ArticleDetailsEvent>(_getBreakingNewsArticle);
  }
}
