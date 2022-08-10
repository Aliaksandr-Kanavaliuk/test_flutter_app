//import 'package:localstore/localstore.dart';
// import 'package:test_flutter_app/src/core/utils/const.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:uuid/uuid.dart';
import 'package:localstorage/localstorage.dart';

class ArticlesLocalStarage {
  final LocalStorage storage = new LocalStorage('articles_app_test_key');
  // final db = Localstore.instance;
  late Article t;

  void saveArticleToStorage(Article article) {
    var uniqID = Uuid().v4();

    storage.setItem(article.id != null ? article.id : uniqID, article);
  }

  Future<void> saveListOfArticlesToStorage(List<Article> articles) async {
    for (int i = 0; i < articles.length; i++) {
      await storage.setItem(articles[i].id, articles[i].toMap());
    }
    // articles.map((article) async {
    //   print(article);
    //   print("fjasdlkjflkasjldfjals");
    //   await storage.setItem(article.id, article);
    //   t = await storage.getItem(article.id);
    // });
  }

  Future<Article> getArticleFromStorageById(String articleId) async {
    final st = await storage.getItem(articleId);
    //Article article = st.map();
    return Article(
      id: st['id'],
      //source: ,
      author: st['author'],
      description: st['description'],
      url: st['url'],
      urlToImage: st['urlToImage'],
      title: st['title'],
      publishedAt: st['publishedAt'],
      content: st['content'],
    );
    //return st; //storage.getItem(articleId);
  }

  //static void putListToStorage() {}
  // static void putListToStorage(List<Article> articles) {
  //   for (int i = 1; i < articles.length; i++) {
  //     try {
  //       var uniqID = Uuid().v4();
  //       final id =
  //           ArticlesLocalStarage().db.collection(localStorageName).doc().id;
  //       // LocalStarage().db.collection(localStorageName).doc().id;
  //       ArticlesLocalStarage().db.collection(localStorageName).doc(id).set({
  //         'articleId': articles[i].id != null ? articles[i].id : uniqID,

  //         ///Uuid().v4(), //articles[i].publishedAt, //.id,
  //         //''
  //         'source': articles[i].source,
  //         'description': articles[i].description,
  //         'url': articles[i].url,
  //         'urlToImage': articles[i].urlToImage,
  //         'title': articles[i].title,
  //         'publishedAt': articles[i].publishedAt,
  //         'content': articles[i].content,
  //       });
  //     } on Exception catch (e) {
  //       // TODO
  //     }
  //   }
  // }

  // Future<Article> getArticleById(String id) async {
  //   final data = await ArticlesLocalStarage()
  //       .db
  //       .collection(localStorageName)
  //       .doc(id)
  //       .get();
  //   //ArticlesLocalStarage().db.collection(localStorageName).doc().id;
  //   //Article article = Article(id:data.id, source:data., author, description, url, urlToImage, title, publishedAt, content) {articleId: article.articleId};

  //   return data as Article;
  // }

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
