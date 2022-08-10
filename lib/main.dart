// @dart=2.9
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:global_configuration/global_configuration.dart';
import 'package:go_router/go_router.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:test_flutter_app/src/config/routes/app_routes.dart';
// import 'package:test_flutter_app/src/config/routes/go_router.dart';
// import 'package:test_flutter_app/src/config/themes/app_theme.dart';
import 'package:test_flutter_app/src/injector.dart';
import 'package:test_flutter_app/src/presentation/article_details/article_detail_view.dart';
import 'package:test_flutter_app/src/presentation/pages/article_details_page.dart';
// import 'package:test_flutter_app/src/presentation/pages/article_list_page.dart';
// import 'package:test_flutter_app/src/presentation/remote_articles/remote_articles_bloc.dart';

// import 'src/core/utils/const.dart';

// import 'package:flutter/material.dart';
// import 'package:navigation_drawer_menu/navigation_drawer.dart';
import 'package:navigation_drawer_menu/navigation_drawer_menu.dart';
// import 'package:navigation_drawer_menu/navigation_drawer_menu_frame.dart';
// import 'package:navigation_drawer_menu/navigation_drawer_state.dart';

const alarmValueKey = ValueKey('Alarm');
const todoValueKey = ValueKey('Todo');
const photoValueKey = ValueKey('Photo');

final Map<Key, MenuItemContent> menuItems = {
  alarmValueKey: MenuItemContent(
      menuItem: MenuItemDefinition("Alarm", alarmValueKey,
          iconData: Icons.access_alarm)),
  todoValueKey: MenuItemContent(
      menuItem: MenuItemDefinition("Todo", todoValueKey,
          iconData: Icons.ad_units_rounded)),
  photoValueKey: MenuItemContent(
      menuItem: MenuItemDefinition("Photo", photoValueKey,
          iconData: Icons.add_a_photo_outlined))
};

// const title = 'navigation_drawer_menu Demo';
const String title = 'GoRouter Example: Declarative Routes';
const menuColor = Color(0xFF424242);
Future<void> main() async {
  // await GlobalConfiguration().loadFromAsset("main_config");
  WidgetsFlutterBinding.ensureInitialized();

  /// TODO make sure that it cannot be mooved into local_db.dart
  // final database = openDatabase(
  //   // Set the path to the database. Note: Using the `join` function from the
  //   // `path` package is best practice to ensure the path is correctly
  //   // constructed for each platform.
  //   join(await getDatabasesPath(), 'doggie_database.db'),
  // );
  await initializeDependancies();

  runApp(MyApp());
}

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ArticleDetailsPageScreen();
      },
      routes: <GoRoute>[
        GoRoute(
          path: 'page2',
          builder: (BuildContext context, GoRouterState state) {
            return ArticleDetailView(articleId: state.extra as String);
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: title,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider<RemoteArticlesBloc>(
  //       create: (_) => injector.get<RemoteArticlesBloc>()
  //         ..add(const RemoteArticlesEvent
  //             .getArticles()), //..add(const GetArticles()),
  //       child: MaterialApp(
  //         title: kMaterialAppTitle,
  //         initialRoute: '/',
  //         onGenerateRoute: (routheSetting) {
  //           return AppRoutes.onGenerateRoutes(routheSetting);
  //         },
  //         theme: AppTheme.Light,
  //       ));
  // }
}

  // Widget getMenu(BuildContext context) =>
  //     Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
  //       NavigationDrawerMenu(
  //           highlightColor: Theme.of(context).indicatorColor,
  //           onSelectionChanged: (c, key) {
  //             state.selectedMenuKey = key;
  //             state.closeDrawer(c);
  //             setState(() {});
  //           },
  //           menuItems: menuItems.values.toList(),
  //           selectedMenuKey: state.selectedMenuKey,
  //           itemPadding: const EdgeInsets.only(left: 5, right: 5),
  //           buildMenuButtonContent: (menuItemDefinition, isSelected,
  //                   buildContentContext) =>
  //               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
  //                 Icon(menuItemDefinition.iconData,
  //                     color: isSelected
  //                         ? Theme.of(buildContentContext).backgroundColor
  //                         : Theme.of(buildContentContext)
  //                             .textTheme
  //                             .bodyText2!
  //                             .color),
  //                 if (state.menuMode(context) != MenuMode.Thin)
  //                   const SizedBox(
  //                     width: 10,
  //                   ),
  //                 if (state.menuMode(context) != MenuMode.Thin)
  //                   Text(menuItemDefinition.text,
  //                       style: isSelected
  //                           ? Theme.of(context).textTheme.bodyText2!.copyWith(
  //                               color: Theme.of(buildContentContext)
  //                                   .backgroundColor)
  //                           : Theme.of(buildContentContext).textTheme.bodyText2)
  //               ]))
  //     ]);
//}