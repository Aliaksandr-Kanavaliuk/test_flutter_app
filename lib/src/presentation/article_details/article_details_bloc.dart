import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_flutter_app/src/data/datasources/local_storage/local_db.dart';
import 'package:test_flutter_app/src/data/datasources/local_storage/local_starage.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/injector.dart';
//import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';
// import 'package:test_flutter_app/src/domain/entities/article.dart';

part 'article_details_bloc.freezed.dart';

part 'article_details_event.dart';

part 'article_details_state.dart';

class ArticleDetailsBloc
    extends Bloc<ArticleDetailsEvent, ArticleDetailsState> {
  Future<void> _getBreakingNewsArticle(
      ArticleDetailsEvent event, Emitter<ArticleDetailsState> emit) async {}

  Future<void> _getArticleById(_ArticleDetailsGetArticleEvent event,
      Emitter<ArticleDetailsState> emit) async {
    // final _article = getArticleFormStorageById(articleId);
    // final ArticlesLocalDb db = injector.get<ArticlesLocalDb>();

    final ArticlesLocalStarage localStarage =
        injector.get<ArticlesLocalStarage>();
    //  localStarage.getArticleById();
    // final _art = await localStarage.getArticleById(event.id);
    final _article = await localStarage.getArticleFromStorageById(event.id);
    //final _articles = await db.getListofArticles();

    // final _article = await db.getArticleFromDBById(event.id);
    // if (_article != null) {
    //   var t = _article;
    // }
    //final data = await localStarage.db.collection('todos').doc(event.id).get();
    // return data as Article;
    emit(ArticleDetailsState.newArticle(article: _article));
  }

  ArticleDetailsBloc() : super(ArticleDetailsState.init()) {
    on<ArticleDetailsEvent>(_getBreakingNewsArticle);
    //on<_ArticleDetailsInitioalEvent>();//_getArticleById);
    on<_ArticleDetailsGetArticleEvent>(_getArticleById);
  }
}
