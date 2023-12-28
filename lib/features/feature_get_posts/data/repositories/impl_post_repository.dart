import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/data/data_source/remote/post_remote_data_source.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/entities/post_entity.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/repositories/post_repository.dart';

class ImplPostRepository implements IPostRepository {
  ImplPostRepository({required this.dataSource});

  final PostRemoteDataSource dataSource;

  @override
  Future<List<PostEntity>> getPosts() async {
    final httpRequest = await dataSource.getPosts();

    if(httpRequest.response.statusCode == HttpStatus.ok){
      return httpRequest.data;
    } else {
      throw DioException(
          requestOptions: httpRequest.response.requestOptions,
          error: httpRequest.response.statusMessage,
          type: DioExceptionType.badResponse,
          response:  httpRequest.response);
    }
  }
}