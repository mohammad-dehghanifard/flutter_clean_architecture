
part of 'remote_post_bloc.dart';



sealed class PostRemoteState extends Equatable{
  const PostRemoteState({this.posts,this.error});
  final List<PostEntity>? posts;
  final DioException? error;
  @override
  List<Object?> get props => [posts,error];
}
// loading state
class RemotePostLoadingState extends PostRemoteState{}
// post success state
class RemotePostSuccessState extends PostRemoteState{
  const RemotePostSuccessState(List<PostEntity> postList) : super(posts: postList);
}
// post failed state
class RemotePostFailedState extends PostRemoteState{
  const RemotePostFailedState(DioException exception) : super(error: exception);
}

