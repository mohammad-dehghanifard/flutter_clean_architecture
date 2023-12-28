part of 'remote_post_bloc.dart';


sealed class PostRemoteEvent extends Equatable {
  const PostRemoteEvent();
  @override
  List<Object?> get props => [];
}

class OnRemotePostEvent extends PostRemoteEvent {}