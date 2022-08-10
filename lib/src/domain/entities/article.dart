import 'package:equatable/equatable.dart';
// import 'package:test_flutter_app/src/domain/entities/source.dart';

class Article extends Equatable {
  final String id;
  final String author;
  final String description;
  final String url;
  final String urlToImage;
  final String title;
  final String publishedAt;
  final String content;

  const Article({
    required this.id,
    required this.author,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.title,
    required this.publishedAt,
    required this.content,
  });

  @override
  List<Object?> get props => [
        id,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
    };
  }

  @override
  bool get stringify => true;
}
