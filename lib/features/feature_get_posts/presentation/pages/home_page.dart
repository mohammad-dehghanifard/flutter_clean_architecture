import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/presentation/bloc/remote_post_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/presentation/widgets/post_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BlocBuilder<RemotePostBloc,PostRemoteState>(
          builder: (context, state) {
            // loading
            if(state is RemotePostLoadingState){
              return const Center(child: CircularProgressIndicator());
            }
            // load post
            if(state is RemotePostSuccessState){
              return SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                child: ListView.builder(
                    itemCount: state.posts!.length,
                    itemBuilder: (context, index) {
                      return PostListItem(postEntity: state.posts![index]);
                    },),
              );
            }
            // load post failed
            if(state is RemotePostFailedState){
              return const Center(child: Text("خطایی در برقراری ارتباط با سرور رخ داده است!"));
            }
            throw Exception('state invalid');
          },
        
        ),
      ),
    );
  }
}


