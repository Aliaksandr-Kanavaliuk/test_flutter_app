import 'package:test_flutter_app/src/data/models/article_model.dart';
import 'package:test_flutter_app/src/domain/entities/article.dart';
import 'package:uuid/uuid.dart';

extension ArticleModelToEntity on ArticleModelApi {
  Article toEntity() {
    return Article(
      id: id ?? Uuid().v4(),
      //source: source,
      author: author ?? '',
      description: description ?? '',
      url: url ?? '',
      urlToImage: urlToImage ?? '',
      title: title ?? '',
      publishedAt: publishedAt ?? '',
      content: content ?? '',
      //hashCode: hashCode ?? 1,
    );
  }
}
