import 'package:flutter/material.dart';
import 'package:news_app/wedgit/news_list.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: CustomScrollView(
          slivers: [
            News_list_view(
              car: category,
            ),
          ],
        ),
      ),
    );
  }
}
