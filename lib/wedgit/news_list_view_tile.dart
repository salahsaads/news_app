
import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';
import 'package:news_app/wedgit/news_tile.dart';

class News_list_view_tile extends StatelessWidget {
  const News_list_view_tile({
    super.key,
    required this.List1,
  });

  final List<ArticleModel> List1;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: List1.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: News_Tile(
          List1: List1[index],
        ),
      );
    }));
  }
}
