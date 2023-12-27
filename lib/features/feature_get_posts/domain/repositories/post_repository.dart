import 'package:flutter_clean_architecture/features/feature_get_posts/domain/entities/post_entity.dart';

abstract class IPostRepository{
  Future<List<PostEntity>> getPosts();
}