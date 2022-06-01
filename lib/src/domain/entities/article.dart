import 'package:equatable/equatable.dart';
import 'package:test_flutter_app/src/domain/entities/source.dart';

class Article extends Equatable {
  final String id;
//  final int id;
  final Source? source;
  final String? author;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? title;
  final String? publishedAt;
  final String? content;
  final int hashCode;
  //final String? hash

  const Article(
    this.id,
    this.source,
    this.author,
    this.description,
    this.url,
    this.urlToImage,
    this.title,
    this.publishedAt,
    this.content,
    this.hashCode,
  );

  @override
  List<Object?> get props => [
        id,
        source,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
        hashCode,
      ];

  @override
  bool get stringify => true;
}
