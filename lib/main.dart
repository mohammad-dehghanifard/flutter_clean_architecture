import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/data/data_source/remote/post_remote_data_source.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/data/repositories/impl_post_repository.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/usecases/get_post_use_case.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/presentation/bloc/remote_post_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<RemotePostBloc>(
        create: (context) => RemotePostBloc(getPostUseCase: GetPostUseCase(repository: ImplPostRepository(dataSource: PostRemoteDataSource(Dio()))))..add(OnRemotePostEvent()),
        child: const HomePage(),
      )
    );
  }
}

