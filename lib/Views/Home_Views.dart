import 'package:flutter/material.dart';
import 'package:news_app/model/model_card.dart';
import 'package:news_app/wedgit/card_list_view.dart';
import 'package:news_app/wedgit/news_list.dart';
import 'package:news_app/wedgit/news_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News'),
            Text(
              ' Cloud',
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: List_View(),
            ),
            const News_list_view(car: 'general',)
          ],
        ),
      ),
    );
  }
}
