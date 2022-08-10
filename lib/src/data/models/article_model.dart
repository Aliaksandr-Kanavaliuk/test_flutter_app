//import 'package:flutter/semantics.dart';
import 'package:test_flutter_app/src/data/models/source_model.dart';
// import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:test_flutter_app/src/domain/entities/source.dart';
// import 'package:uuid/uuid.dart';

class ArticleModelApi {
  ArticleModelApi({
    // required int id,
    required this.id,
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
    //required this.hashCode,
  });

  final String? id;
//  final int id;
  final Source source;
  final String? author;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? title;
  final String? publishedAt;
  final String? content;
  //final int Function() hashCode;

  factory ArticleModelApi.fromJson(Map<String, dynamic> map) {
    if (map == null) {
      // return new ArticleModel(
      //   id = 1,
      //   null,
      //   '',
      //   '',
      //   '',
      //   '',
      //   '',
      // );
      //}
      null;
    }

    return ArticleModelApi(
      id: map['id'] as String,
      source: SourceModel.fromJson(map['source'] as Map<String, dynamic>),
      author: map['author'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      url: map['url'] as String,
      urlToImage: map['urlToImage'] as String,
      publishedAt: map['publishedAt'] as String,
      content: map['content'] as String,
    );
    //hashCode: map['hashCode'] as int);
  }
}
