// import 'dart:js_util';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_flutter_app/src/core/utils/const.dart';
import 'package:test_flutter_app/src/data/datasources/remote/news_api_service.dart';
import 'package:test_flutter_app/src/data/repositories/articles_reposotory_impl.dart';
import 'package:test_flutter_app/src/domain/repositories/article_repository.dart';
import 'package:test_flutter_app/src/domain/usecases/get_articles_usecases.dart';
import 'package:test_flutter_app/src/presentation/blocs/article_details/article_details_bloc.dart';
import 'package:test_flutter_app/src/presentation/blocs/remote_articles/remote_articles_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependancies() async {
  // injector.registerSingleton<Dio>(Dio());

  // // Dependencies
  // injector.registerSingleton<NewsApiService>(NewsApiService(injector()));
  // injector
  //     .registerSingleton<ArticleRepository>(ArticlesReposotoryImpl(injector()));

  // // UseCases
  // injector
  //     .registerSingleton<GetArticlesUsecases>(GetArticlesUsecases(injector()));

  // // Blocs
  // injector.registerFactory<RemoteArticlesBloc>(
  //     () => RemoteArticlesBloc(injector()));
  injector
    ..registerSingleton<Dio>(
      Dio(BaseOptions(baseUrl: kBaseUrl)),
    )
    ..registerSingleton<NewsApiService>(
      NewsApiService(injector.get<Dio>()),
    )
    ..registerSingleton<ArticleRepository>(
      ArticlesReposotoryImpl(injector.get<NewsApiService>()),
    )
    ..registerSingleton<GetArticlesUsecases>(
      GetArticlesUsecases(injector.get<ArticleRepository>()),
    )
    //..registerSingleton<>(instance),
    ..registerFactory<RemoteArticlesBloc>(
      () => RemoteArticlesBloc(injector.get<GetArticlesUsecases>()),
    )
    ..registerFactory<ArticleDetailsBloc>(() => ArticleDetailsBloc());
}
