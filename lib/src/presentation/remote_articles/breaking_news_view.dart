// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/presentation/common/app_bar_widget.dart';
import 'package:test_flutter_app/src/presentation/remote_articles/remote_articles_bloc.dart';
import 'package:test_flutter_app/src/presentation/widgets/article_widget.dart';

class BreqakingNewsView extends StatelessWidget {
  const BreqakingNewsView({Key? key}) : super(key: key ?? const Key('value'));

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      appBar: CustomAppBar(), //_buildAppbar(), //AppBar(),
      body: _buildBody(context, scrollController),
    );
  }

  void _onScrollListener(BuildContext context, ScrollController controller) {
    final remoteArticleBloc = BlocProvider.of<RemoteArticlesBloc>(context);
    final state = remoteArticleBloc.blocProcessState;
    final currentScroll = controller.position;
    //final ma
    if (/*currentScroll == maxScroll &&*/
        state == BlocProcessState.idle) {
      remoteArticleBloc.add(const RemoteArticlesEvent.getArticles());
    }
  }

  void _onArticlePressed(
    BuildContext context,
    String articleId,
    //Article article,
  ) {
    // arguments: {'mortgageModel': mortgageModel}
    Navigator.pushNamed(context, '/ArticleDetailView',
        //arguments: {'article': article});
        arguments: {'articleId': articleId});
//        arguments: {'articleId': article.id.toString()});
  }

  Widget _buildArticle(
    BuildContext context,
    ScrollController scrollController,
    List<Article> articles,
    bool noMoreData,
  ) {
    scrollController
        .addListener(() => _onScrollListener(context, scrollController));
//var t = scrollController.position;
    return ListView.builder(
      itemBuilder: (context, index) => ArticleWidget(
        article: articles[index],
        onArticlePressed: (_) => _onArticlePressed(
            context, articles[index].publishedAt!), //.source!.id!),
      ),
      controller: scrollController,
      // children: [
      //   ListView.builder(
      //     itemCount: articles.length,
      //     //buildWhen:
      //     itemBuilder: (context, index) => ArticleWidget(
      //       article: articles[index],
      //       onArticlePressed: (_) =>
      //           _onArticlePressed(context, articles[index]),
      //     ),
      //   )
      // ...List<Widget>.from(
      //   artiles.map(
      //     (e) => Builder(
      //       builder: (context) => ArticleWidget(
      //         article: e,
      //         onArticlePressed: (e) => _onArticlePressed(context, e),
      //       ),
      //     ),
      //   ),
      // ),
      // if (noMoreData) ...[
      //   const SizedBox(),
      // ] else ...[
      //   const Padding(
      //     padding: EdgeInsets.symmetric(vertical: 14),
      //     child: CupertinoActivityIndicator(),
      //   )
      // ],
      //],
    );
  }

  Widget _buildBody(BuildContext context, ScrollController scrollController) {
    return BlocBuilder<RemoteArticlesBloc, RemotteArticlesState>(
      builder: (_, state) {
        if (state is RemoteArticlesLoadingState) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state is RemoteArticlesErrorState) {
          return const Center(
              child: InkWell(
            child: Icon(Icons.refresh),
            //onTap: () => {},
          ));
        }
        if (state is RemoteArticlesDoneState) {
          return _buildArticle(
              context, scrollController, state.articles, state.noMoreData);
        }
        return const SizedBox();
      },
    );
  }
}
