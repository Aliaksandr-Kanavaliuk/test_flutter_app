import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_flutter_app/src/core/utils/const.dart';
import 'package:test_flutter_app/src/data/datasources/local_storage/local_db.dart';
import 'package:test_flutter_app/src/data/datasources/local_storage/local_starage.dart';
import 'package:test_flutter_app/src/data/datasources/remote/news_api_service.dart';
import 'package:test_flutter_app/src/data/repositories/articles_reposotory_impl.dart';
import 'package:test_flutter_app/src/domain/repositories/article_repository.dart';
import 'package:test_flutter_app/src/domain/usecases/get_articles_usecases.dart';
import 'package:test_flutter_app/src/presentation/article_details/article_details_bloc.dart';
import 'package:test_flutter_app/src/presentation/remote_articles/remote_articles_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependancies() async {
  // final database = openDatabase(
  //   join(await getDatabasesPath(), 'articles_local_database.db'),
  // );

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
    ..registerSingleton<ArticlesLocalDb>(ArticlesLocalDb())
    ..registerSingleton<ArticlesLocalStarage>(ArticlesLocalStarage())
    ..registerFactory<RemoteArticlesBloc>(
      () => RemoteArticlesBloc(injector.get<GetArticlesUsecases>()),
    )
    ..registerFactory<ArticleDetailsBloc>(() => ArticleDetailsBloc());
}
