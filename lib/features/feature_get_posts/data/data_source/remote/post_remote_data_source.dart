
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constant.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/data/model/post_model.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'post_remote_data_source.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class PostRemoteDataSource {
  factory PostRemoteDataSource(Dio dio) = _PostRemoteDataSource;

  @GET('/posts')
  Future<HttpResponse<List<PostModel>>> getPosts();

}