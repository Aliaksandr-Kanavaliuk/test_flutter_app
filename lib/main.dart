// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_app/src/config/routes/app_routes.dart';
import 'package:test_flutter_app/src/config/themes/app_theme.dart';
import 'package:test_flutter_app/src/injector.dart';
import 'package:test_flutter_app/src/presentation/remote_articles/remote_articles_bloc.dart';

import 'src/core/utils/const.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependancies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
        create: (_) => injector.get<RemoteArticlesBloc>()
          ..add(const RemoteArticlesEvent
              .getArticles()), //..add(const GetArticles()),
        child: MaterialApp(
          title: kMaterialAppTitle,
          initialRoute: '/',
          onGenerateRoute: (routheSetting) {
            return AppRoutes.onGenerateRoutes(routheSetting);
          },
          theme: AppTheme.Light,
        ));
  }
}
