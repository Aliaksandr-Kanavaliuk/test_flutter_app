// import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';

class ArticlesLocalDb {
  static const String localDbId = ('articles_local_database.db');
  late dynamic database;

  ArticlesLocalDb() {
    //initDBWork();
  }
  Future<void> initDBWork() async {
    await connectDb();
    await createTab();
  }
  // await connectDb();

  Future<void> connectDb() async {
    database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), localDbId),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE articles(id INTEGER PRIMARY KEY, author TEXT, description TEXT, url TEXT, urlToImage TEXT, title TEXT, publishedAt TEXT, content TEXT)',

          // 'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
        );
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,
    );
  }

  Future<void> createTab() async {
    // if(database!=null){}
    final db = await database;
    db.openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), localDbId),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE articles(id TEXT PRIMARY KEY, author TEXT, description TEXT, url TEXT, urlToImage TEXT, title TEXT, publishedAt TEXT, content TEXT)',
        );
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,
    );
  }

  Future<void> insertListOfArticles(List<Article> articles) async {
    final db = await database;

    articles.map(
      (article) async => await db.insert(
        'articles',
        article.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      ),
    );
  }

  Future<List<Article>> getListofArticles() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('articles');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Article(
        id: maps[i]['id'],
        //source: ,
        author: maps[i]['author'],
        description: maps[i]['description'],
        url: maps[i]['url'],
        urlToImage: maps[i]['urlToImage'],
        title: maps[i]['title'],
        publishedAt: maps[i]['publishedAt'],
        content: maps[i]['content'],
      );
    });
  }

  Future<Article> getArticleFromDBById(String id) async {
    final db = await database;
    final Article = await db.query("SELECT * FROM articles WHERE [id]='$id'");
    return Article;
    //return Map<String, dynamic> map = await db.query('dogs');
  }

  Future<void> insertArticle(Article article) async {
    // Get a reference to the database.
    final db = await database;

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      'articles',
      article.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
