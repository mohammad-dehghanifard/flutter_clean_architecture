import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/di_injection.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/presentation/bloc/remote_post_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/presentation/pages/home_page.dart';

void main() async {
  await initDi();
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
        create: (context) => di<RemotePostBloc>()..add(OnRemotePostEvent()),
        child: const HomePage(),
      )
    );
  }
}

