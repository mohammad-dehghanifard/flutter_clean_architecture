import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/entities/post_entity.dart';

part 'remote_post_event.dart';
part 'remote_post_state.dart';

class RemotePostBloc extends Bloc<PostRemoteEvent,PostRemoteState>{
  RemotePostBloc() : super(RemotePostLoadingState()){

  }
}