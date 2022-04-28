import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_app/src/config/routes/app_routes.dart';
import 'package:test_flutter_app/src/config/themes/app_theme.dart';
import 'package:test_flutter_app/src/injector.dart';
import 'package:test_flutter_app/src/presentation/blocs/remote_articles/remote_articles_bloc.dart';

import 'src/core/utils/const.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
        create: (_) => injector()..add(const GetArticles()),
        child: MaterialApp(
          debugShowCheckedModeBanner: true,
          title: kMaterialAppTitle,
          onGenerateInitialRoutes: AppRoutes.onGenerateRoutes(),
          theme: AppTheme.Light,
        ));
    // return MaterialApp(
    //   title: kMaterialAppTitle,
    //   onGenerateRoute: AppRoutes.onGenerateRoutes,
    //   theme: AppTheme.Light,
    // );
    // TODO: implement build
    // throw UnimplementedError();
  }
}

// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// // import 'package:test_flutter_app/counter.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';

// // final counter = Counter();

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Test MobX',

//       ///'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(
//         title: 'MobX test Title',
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('data test'),
//             //Observer(builder: (_) => Text('${counter.value}'))
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {}, //counter.increment,
//         tooltip: 'PLUS',
//         child: Icon(Icons.ac_unit),
//       ),
//     );
//   }

//   final String title;
// }
