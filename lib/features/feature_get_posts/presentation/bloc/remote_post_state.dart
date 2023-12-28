
part of 'remote_post_bloc.dart';



sealed class PostRemoteState extends Equatable{
  const PostRemoteState({this.posts,this.errorMessage});
  final List<PostEntity>? posts;
  final String? errorMessage;
  @override
  List<Object?> get props => [posts,errorMessage];
}
// loading state
class RemotePostLoadingState extends PostRemoteState{}
// post success state
class RemotePostSuccessState extends PostRemoteState{
  const RemotePostSuccessState(List<PostEntity> postList) : super(posts: postList);
}
// post failed state
class RemotePostFailedState extends PostRemoteState{}

