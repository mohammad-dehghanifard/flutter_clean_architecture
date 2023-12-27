import 'package:flutter_clean_architecture/features/feature_get_posts/domain/entities/post_entity.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/repositories/post_repository.dart';

class ImplPostRepository implements IPostRepository {
  @override
  Future<List<PostEntity>> getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }
}