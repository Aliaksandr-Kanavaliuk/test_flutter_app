//import 'package:flutter/semantics.dart';
import 'package:test_flutter_app/src/data/models/source_model.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';

class ArticleModel extends Article {
  ArticleModel({
    // required int id,
    required String id,
    SourceModel? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
    required int hashCode,
  }) : super(
          id,
          source,
          author,
          description,
          url,
          urlToImage,
          title,
          publishedAt,
          content,
          hashCode,
        );

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
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

    return ArticleModel(
        id: map['id'] as String,
        source: SourceModel.fromJson(map['source'] as Map<String, dynamic>),
        author: map['author'] as String,
        title: map['title'] as String,
        description: map['description'] as String,
        url: map['url'] as String,
        urlToImage: map['urlToImage'] as String,
        publishedAt: map['publishedAt'] as String,
        content: map['content'] as String,
        hashCode: map['hashCode'] as int);
  }
}
