import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/data/data_source/remote/post_remote_data_source.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/data/repositories/impl_post_repository.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/repositories/post_repository.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/usecases/get_post_use_case.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/presentation/bloc/remote_post_bloc.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> initDi() async {
  //#region GetPostDi
  di.registerSingleton<Dio>(Dio());
  di.registerSingleton<PostRemoteDataSource>(PostRemoteDataSource(di()));
  di.registerSingleton<IPostRepository>(ImplPostRepository(dataSource: di()));
  di.registerSingleton<GetPostUseCase>(GetPostUseCase(repository: di()));
  di.registerSingleton<RemotePostBloc>(RemotePostBloc(getPostUseCase: di()));
  //#endregion
}