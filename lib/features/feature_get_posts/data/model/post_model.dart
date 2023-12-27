import 'dart:core';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/entities/post_entity.dart';

class PostModel extends PostEntity{

  const PostModel({
    required int id,
    required int userId,
    required String title,
    required String body,
  }) : super(id: id, userID: userId, title: title, body: body);


  factory PostModel.fromJson(Map<String,dynamic> json) {
    return PostModel(id: json['id'], userId: json['userId'], title: json['title'], body: json['body']);
  }

  Map<String,dynamic> toJson(){
    return {
      "id" : id,
      "userId" : userID,
      "title" : title,
      "body" : body
    };
  }
}