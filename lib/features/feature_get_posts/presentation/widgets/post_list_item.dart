import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architecture/features/feature_get_posts/domain/entities/post_entity.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({
    super.key, required this.postEntity,
  });

  final PostEntity postEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: CupertinoColors.systemBlue,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Text(postEntity.title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: CupertinoColors.white)),
          const SizedBox(height: 12),
          Text(
              postEntity.body,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: CupertinoColors.tertiarySystemBackground)),
        ],
      ),
    );
  }
}