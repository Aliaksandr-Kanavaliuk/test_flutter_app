import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/presentation/blocs/article_details/article_details_bloc.dart';

class ArticleDetailView extends StatelessWidget {
  //HookWidget {
  final Article? article;
  const ArticleDetailView({Key? key, this.article})
      : super(key: key ?? const Key('value'));

  Widget _buildBody(ScrollController scrollController) {
    return BlocBuilder<ArticleDetailsBloc, ArticleDetailsState>(
      builder: (_, state) {
        if (state is ArticleDetailsMarkedToSave) {
          print(article);
          return Text('fasdfasdf');
        }
        return const SizedBox();
        //if (state is RemoteArticlesLoading) {return const Center(child:  CupertinoActivityIndicator())}
        //if(state is RemoteArticlesError){return const Center(child:  Icon(Ionicons.refresh));}
      },
      //return const SizedBox();
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      title: const Text(
        'Test Daily News Test',
        style: TextStyle(color: Colors.amberAccent),
      ),
      actions: [
        Builder(
          builder: (context) => GestureDetector(
            onTap: () => {}, //_onShowSavedArticlesViewTapped(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Icon(
                Icons.bookmark,
                color: Colors.amberAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    //return Text('ArticleDetailViewTEST TEXT');
    return Scaffold(
      appBar: _buildAppbar(), //AppBar(),
      body: _buildBody(
          scrollController), // Text('ArticleDetailViewTEST TEXT'), //_buildBody(scrollController),
    );
  }
}
