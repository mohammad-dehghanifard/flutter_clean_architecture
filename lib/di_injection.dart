import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> initDi() async {
  di.registerSingleton<Dio>(Dio());
}