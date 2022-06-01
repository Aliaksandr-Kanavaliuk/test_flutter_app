import 'package:test_flutter_app/src/core/utils/const.dart';

class ArticleRequestParams {
  final String apiKey;
  final String country;
  final String category;
  final int page;
  final int pageSize;
  final String itemId;

  const ArticleRequestParams(
      {this.apiKey = kApiKey,
      this.itemId = '',
      this.country = 'us',
      this.category = 'general',
      this.page = 1,
      this.pageSize = 1});
}
