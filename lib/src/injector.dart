// import 'dart:js_util';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_flutter_app/src/data/datasources/remote/news_api_service.dart';
import 'package:test_flutter_app/src/data/repositories/articles_reposotory_impl.dart';
import 'package:test_flutter_app/src/domain/repositories/article_repository.dart';
import 'package:test_flutter_app/src/domain/usecases/get_articles_usecases.dart';
import 'package:test_flutter_app/src/presentation/blocs/remote_articles/remote_articles_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependancies() async {
  injector.registerSingleton<Dio>(Dio());
  injector.registerSingleton<NewsApiService>(NewsApiService(injector()));
  injector
      .registerSingleton<ArticleRepository>(ArticlesReposotoryImpl(injector()));
  injector
      .registerSingleton<GetArticlesUsecases>(GetArticlesUsecases(injector()));
  injector.registerFactory<RemoteArticlesBloc>(
      () => RemoteArticlesBloc(injector()));
}
