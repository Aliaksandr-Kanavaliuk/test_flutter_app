import 'dart:async';
// import 'dart:html';

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
  //late final Article article;

  ArticleDetailView(
      {Key? key,
      //required BuildContext context,
      required this.articleId}) //, required this.articleId})
      : super(key: key ?? const Key('value')) {}

  @override
  Widget build(BuildContext context) {
    //final _article = getArticleFormStorageById(articleId);
    // article = _article.then((value) => null)
    //final scrollController = ScrollController();
    //final remoteArticleBloc = BlocProvider.of<ArticleDetailsBloc>(context);
    //final args

    // article = ModalRoute.of(context)!.settings.arguments
    //     as Article; //ScreenArguments;
    if (!articleId.isEmpty) {
      return Scaffold(
        appBar: CustomAppBar(),
        body: _buildBody(articleId), //article.id.toString()),
      );
    } else {
      return Scaffold();
    }
  }
}

// Future<Article> getArticleFormStorageById(String id) async {
//   final ArticlesLocalStarage localStarage =
//       injector.get<ArticlesLocalStarage>();
//   //  localStarage.getArticleById();
//   final data = await localStarage.db.collection('todos').doc(id).get();
//   return data as Article;
// }

Widget _buildTitleCard(Article article) {
  return Padding(
    padding: EdgeInsetsDirectional.all(10),
    child: Column(children: [
      Padding(
        padding: EdgeInsetsDirectional.all(10),
        child: Text(article.title),
      ),
      Image.network(
        article.urlToImage,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) {
          return const Center(
            child: Text(
              'xz 404 xz',
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
      Padding(
        padding: EdgeInsetsDirectional.all(10),
        child: Text(article.author),
      ),
      Padding(
        padding: EdgeInsetsDirectional.all(10),
        child: Text(article.description),
      ),
      Padding(
        padding: EdgeInsetsDirectional.all(10),
        child: Text(article.url),
      ),
      Row(
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('Approve'),
            icon: const Icon(Icons.thumb_up),
            backgroundColor: Colors.pink,
          ),
        ],
      ),
    ]),
  );
}

void term() {}

Widget _buildImage(BuildContext context, Article article) {
  return Padding(
    padding: EdgeInsetsDirectional.only(end: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
        ),
        child: Image.network(
          article.urlToImage,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) {
            return const Center(
              child: Text(
                'xz 404 xz',
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    ),
  );
}

Widget _buildBody(String id) {
  //String id) {

  return BlocProvider<ArticleDetailsBloc>(
    create: (context) => ArticleDetailsBloc(),
    child: BlocBuilder<ArticleDetailsBloc, ArticleDetailsState>(
      builder: (_, state) {
        if (state is ArticlesDetailsInitState) {
          _
              .read<ArticleDetailsBloc>()
              .add(ArticleDetailsEvent.getArticle(id: id));
          //return  _buildImage(_); //Scaffold();
          //return Text('ArticlesDetailsInitState');
        }
        if (state is ArticleMarkedToSaveState) {
          return Text("ArticleMarkedToSaveState");
        }
        if (state is NewArticleState) {
          return _buildTitleCard(
              state.article); //_buildImage(_, state.article); //Scaffold();
        }
        if (state is ArticleMarkedToSaveState) {}
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
