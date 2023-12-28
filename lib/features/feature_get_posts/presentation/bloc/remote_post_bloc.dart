import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/entities/post_entity.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/usecases/get_post_use_case.dart';

part 'remote_post_event.dart';
part 'remote_post_state.dart';

class RemotePostBloc extends Bloc<PostRemoteEvent, PostRemoteState> {
  final GetPostUseCase getPostUseCase;
  RemotePostBloc({required this.getPostUseCase}) : super(RemotePostLoadingState()) {

    on<OnRemotePostEvent>((event, emit) async {
      emit(RemotePostLoadingState());
      final List<PostEntity> data = await getPostUseCase.call();
      if(data.isNotEmpty){
        emit(RemotePostSuccessState(data));
      }else{
        emit(RemotePostFailedState());
      }
    });

  }
}