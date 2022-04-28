// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test_flutter_app/src/presentation/views/breaking_news_view.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const BreqakingNewsView()); //Scaffold());
      case '/details':
        return _materialRoute(const Text('jjflkdsajflkjalksd'));
      default:
        return null!;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
