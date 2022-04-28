import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobx/mobx.dart';
import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/presentation/blocs/remote_articles/remote_articles_bloc.dart';

class BreqakingNewsView extends HookWidget {
  const BreqakingNewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    // useEffect(() {
    //   scrollController.addListener(() => _onScrollListener(context, scrollController));
    //   return scrollController.dispose;
    // }, [scrollController]);
    void _onShowSavedArticlesViewTapped(BuildContext context) {
      Navigator.pushNamed(context, '/SavedArticlesView');
    }

    void _onArticlePressed(
      BuildContext context,
      Article article,
    ) {
      Navigator.pushNamed(context, '/ArticleDetailView', arguments: article);
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
              onTap: () => _onShowSavedArticlesViewTapped(context),
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

    Widget _buildArticle(
      ScrollController scrollController,
      List<Article> artiles,
      bool noMoreData,
    ) {
      return ListView(
        controller: scrollController,
        children: [
          ...List<Widget>.from(
            artiles.map(
              (e) => Builder(
                builder: (context) => ArticleWidget(
                  artile: e,
                  onArticlePressed: (e) => _onArticlePressed(context, e),
                ),
              ),
            ),
          ),
          if (noMoreData) ...[
            const SizedBox(),
          ] else ...[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: CupertinoActivityIndicator(),
            )
          ],
        ],
      );
    }

    Widget _buildBody(ScrollController scrollController) {
      // return _buildArticle(scrollController);
      return BlocBuilder<RemoteArticlesBloc, RemotteArticlesState>(
        builder: (_, state) {
          if (state is RemoteArticlesLoading) {
            return const Center(child: CupertinoActivityIndicator());
          }
          if (state is RemoteArticlesError) {
            return const Center(
                child: Icon(Icons.refresh)); //Ionicons.refresh));
          }
          if (state is RemoteArticlesDone &&
              state.articles != null &&
              state.noMoreData != null) {
            return _buildArticle(
                scrollController, state.articles!, state.noMoreData!);
          }
          return const SizedBox();
        },
      );
    }

    void _onScrollListener(BuildContext context, ScrollController controller) {
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final remoteArticleBloc = BlocProvider.of<RemoteArticlesBloc>(context);
      final state = remoteArticleBloc.blocProcessState;
      if (currentScroll == maxScroll && state == BlocProcessState.idle) {
        remoteArticleBloc.add(const GetArticles());
      }
    }

    useEffect(() {
      scrollController
          .addListener(() => _onScrollListener(context, scrollController));
      return scrollController.dispose;
    }, [scrollController]);

    return Scaffold(
      appBar: _buildAppbar(), //AppBar(),
      body: _buildBody(scrollController),
    );
    // PreferredSizeWidget _buildAppbar() {};

    //   Widget _buildBody(ScrollController scrollController) {
    //     return BlocBuilder<RemoteArticlesBloc, RemotteArticlesState>(
    //       builder: (_, state) => {
    //         if (state is RemoteArticlesLoading) {return const Center(child:  CupertinoActivityIndicator())}
    //         if(state is RemoteArticlesError){return const Center(child:  Icon(Ionicons.refresh));}
    //       },
    //       return const SizedBox();
    //     );
    //   }
  }
}
