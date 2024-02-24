import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';

class News_Tile extends StatelessWidget {
  final ArticleModel List1;
  News_Tile({super.key, required this.List1});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: List1.image != null
              ? Image.network(
                  List1.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.asset('assets/isloading.jpg'),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          List1.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          List1.subTitle ?? "",
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
