import 'package:localstore/localstore.dart';
import 'package:test_flutter_app/src/core/utils/const.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';

class ArticlesLocalStarage {
  final db = Localstore.instance;

  //static void putListToStorage() {}
  static void putListToStorage(List<Article> articles) {
    for (int i = 1; i < articles.length; i++) {
      try {
        final id =
            ArticlesLocalStarage().db.collection(localStorageName).doc().id;
        // LocalStarage().db.collection(localStorageName).doc().id;
        ArticlesLocalStarage().db.collection(localStorageName).doc(id).set({
          'articleId': articles[i].id,
          //''
          'source': articles[i].source,
          'description': articles[i].description,
          'url': articles[i].url,
          'urlToImage': articles[i].urlToImage,
          'title': articles[i].title,
          'publishedAt': articles[i].publishedAt,
          'content': articles[i].content,
        });
      } on Exception catch (e) {
        // TODO
      }
    }
  }

  Future<Article> getArticleById(String id) async {
    final data = await ArticlesLocalStarage()
        .db
        .collection(localStorageName)
        .doc(id)
        .get();
    //ArticlesLocalStarage().db.collection(localStorageName).doc().id;
    //Article article = Article(id:data.id, source:data., author, description, url, urlToImage, title, publishedAt, content) {articleId: article.articleId};

    return data as Article;
  }

//   // gets new id
//   final id = db.collection('todos').doc().id;

// // save the item
//   db.collection('todos').doc(id).set({
//   'title': 'Todo title',
//   'done': false
//   });
}

// void putListToStorage(List<Article> articles) {
//   for (int i = 1; i < articles.length; i++) {
//     final id = LocalStarage().db.collection(localStorageName).doc().id;
//     // LocalStarage().db.collection(localStorageName).doc().id;
//     LocalStarage().db.collection(localStorageName).doc(id).set({
//       'articleId': articles[i].id,
//       'source': articles[i].source,
//       'description': articles[i].description,
//       'url': articles[i].url,
//       'urlToImage': articles[i].urlToImage,
//       'title': articles[i].title,
//       'publishedAt': articles[i].publishedAt,
//       'content': articles[i].content,
//     });
//   }
// }

// Future<Article> getArticleById(String id) async {
//   final data =
//       await LocalStarage().db.collection(localStorageName).doc(id).get();
//   LocalStarage().db.collection(localStorageName).doc().id;
//   return data as Article;
// }
