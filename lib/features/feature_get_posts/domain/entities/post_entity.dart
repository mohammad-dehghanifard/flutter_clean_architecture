import 'package:equatable/equatable.dart';

class PostEntity extends Equatable{

  const PostEntity({
    required this.id,
    required this.userID,
    required this.title,
    required this.body,
  });

  final int id , userID;
  final String title , body;

  @override
  List<Object?> get props => [id,userID,title,body];
}