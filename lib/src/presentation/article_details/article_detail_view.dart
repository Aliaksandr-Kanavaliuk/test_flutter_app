import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:localstore/localstore.dart';
import 'package:test_flutter_app/src/data/datasources/local_storage/local_starage.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/injector.dart';
import 'package:test_flutter_app/src/presentation/article_details/article_details_bloc.dart';
import 'package:test_flutter_app/src/presentation/common/app_bar_widget.dart';

class ArticleDetailView extends StatelessWidget {
  //HookWidget {
  // final Article? article;
  final String articleId;
  late final Article article;

  ArticleDetailView(
      {Key? key,
      //required BuildContext context,
      required this.articleId}) //, required this.articleId})
//  ArticleDetailView({Key? key, this.article})
      : super(key: key ?? const Key('value')) {}

  // Widget _build() {
  //   return BlocProvider(create:
  // }

  // PreferredSizeWidget _buildAppbar() {
  //   return AppBar(
  //     title: const Text(
  //       'Test Daily News Test',
  //       style: TextStyle(color: Colors.amberAccent),
  //     ),
  //     actions: [
  //       Builder(
  //         builder: (context) => GestureDetector(
  //           onTap: () => {}, //_onShowSavedArticlesViewTapped(context),
  //           child: const Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 14),
  //             child: Icon(
  //               Icons.bookmark,
  //               color: Colors.amberAccent,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    //final scrollController = ScrollController();
    //final remoteArticleBloc = BlocProvider.of<ArticleDetailsBloc>(context);
    //final args

    article = ModalRoute.of(context)!.settings.arguments
        as Article; //ScreenArguments;

    return Scaffold(
      appBar: CustomAppBar(),
      body: _buildBody(article.id.toString()),
    );
  }
}

Future<Article> getArticleFormStorageById(String id) async {
  final ArticlesLocalStarage localStarage =
      injector.get<ArticlesLocalStarage>();
  //  localStarage.getArticleById();
  final data = await localStarage.db.collection('todos').doc(id).get();
  return data as Article;
}

Widget _buildBody(String id) {
  //String id) {
  final Article = getArticleFormStorageById(id);
  return BlocProvider<ArticleDetailsBloc>(
    create: (context) => ArticleDetailsBloc(),
    child: BlocBuilder<ArticleDetailsBloc, ArticleDetailsState>(
      //return BlocBuilder<ArticleDetailsBloc, ArticleDetailsState>(
      builder: (_, state) {
        if (state is ArticlesDetailsInitState) {
          //print(article);
          return Text('ArticlesDetailsInitState');
        }
        if (state is ArticleMarkedToSaveState) {
          return Text("ArticleMarkedToSaveState");
        }
        return const SizedBox();
        //if (state is RemoteArticlesLoading) {return const Center(child:  CupertinoActivityIndicator())}
        //if(state is RemoteArticlesError){return const Center(child:  Icon(Ionicons.refresh));}
      },
      //return const SizedBox();
    ),

    //child:
  );
}
//);
//}
