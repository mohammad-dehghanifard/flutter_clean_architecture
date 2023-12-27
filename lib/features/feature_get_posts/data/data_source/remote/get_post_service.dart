
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constant.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/data/model/post_model.dart';
import 'package:retrofit/http.dart';

part 'get_post_service.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class GetPostApiService {
  factory GetPostApiService(Dio dio) = _GetPostApiService;
  @GET('/posts')
  Future<List<PostModel>> getPosts();

}