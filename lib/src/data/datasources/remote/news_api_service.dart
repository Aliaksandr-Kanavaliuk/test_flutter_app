import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_flutter_app/src/core/utils/const.dart';
import 'package:test_flutter_app/src/data/models/breking_news_response_model.dart';

part 'news_api_service.g.dart';

// @RestApi(baseUrl: kBaseUrl)
// abstract class NewsApiService {
//   factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

//   @GET('/top-headlines')
//   Future<HttpResponse<BreakingNewsResponseModel>> getBreakingNewsArticles({
//     @Query("apiKey") String apiKey,
//     @Query("country") String country,
//     @Query("category") String category,
//     @Query("page") int page,
//     @Query("pageSize") int pageSize,
//   });
// }

@RestApi(baseUrl: kBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponseModel>> getBreakingNewsArticles({
    @Query("apiKey") required String apiKey,
    @Query("country") required String country,
    @Query("category") required String category,
    @Query("page") required int page,
    @Query("pageSize") required int pageSize,
  });
}
