import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_app/src/injector.dart';
import 'package:test_flutter_app/src/presentation/remote_articles/breaking_news_view.dart';
import 'package:test_flutter_app/src/presentation/remote_articles/remote_articles_bloc.dart';

class ArticleDetailsPageScreen extends StatelessWidget {
  /// Creates a [ArticleDetailsPageScreen].
  const ArticleDetailsPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
        create: (_) => injector.get<RemoteArticlesBloc>()
          ..add(const RemoteArticlesEvent
              .getArticles()), //..add(const GetArticles()),
        child: BreqakingNewsView(
            //title: kMaterialAppTitle,
            //initialRoute: '/',
            // onGenerateRoute: (routheSetting) {
            //   return AppRoutes.onGenerateRoutes(routheSetting);
            // },
            //theme: AppTheme.Light,
            ));
  }
  // Widget build(BuildContext context) => Scaffold(
  //       appBar: AppBar(title: const Text('ArticleDetailsPageScreen App.title')),
  //       body: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             ElevatedButton(
  //               onPressed: () => context.go('/page2'),
  //               child: const Text('Go to page 2'),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
}
