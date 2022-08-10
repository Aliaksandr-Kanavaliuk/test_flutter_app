import 'package:test_flutter_app/src/data/models/article_model.dart';

class BreakingNewsResponseModel {
  final String? status;
  final int? totalrRsults;
  final List<ArticleModelApi>? articles;

  BreakingNewsResponseModel({
    this.status,
    this.totalrRsults,
    this.articles,
  });

  factory BreakingNewsResponseModel.fromJson(Map<String, dynamic> json) {
    return BreakingNewsResponseModel(
      status: json['status'] as String,
      totalrRsults: json['totalrRsults'] as int,
      articles: List<ArticleModelApi>.from(
        (json['articles'] as List<dynamic>).map(
          (e) => ArticleModelApi.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }
}
