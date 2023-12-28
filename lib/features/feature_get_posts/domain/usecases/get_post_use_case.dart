 import 'package:flutter_clean_architecture/core/usecase/use_case.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/entities/post_entity.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/repositories/post_repository.dart';

class PostUseCase implements UseCase<List<PostEntity>,void>{
  PostUseCase({required this.repository});
  final IPostRepository repository;

  @override
  Future<List<PostEntity>> call({void params}) => repository.getPosts();

}