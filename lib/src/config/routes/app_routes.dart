// import 'dart:html';

//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/presentation/article_details/article_detail_view.dart';
import 'package:test_flutter_app/src/presentation/remote_articles/breaking_news_view.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/details':
        return _materialRoute(const Text('jjflkdsajflkjalksd'));
      case '/SavedArticlesView':
        return _materialRoute(const Text('details'));
      case '/ArticleDetailView':
        final articleId = settings.arguments as String;
        return _materialRoute(Builder(
//            Article article = settings.arguments as Article;
            builder: (context) => ArticleDetailView(
                  //context: context,
                  articleId: articleId,

                  // articleId: '',
                )));
      //return _materialRoute( ArticleDetailView(article: settings.arguments.));
      case '/':
      default:
        return _materialRoute(const BreqakingNewsView()); //Scaffold());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
