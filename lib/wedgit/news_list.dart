import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';
import 'package:news_app/services/services.dart';
import 'package:news_app/wedgit/news_list_view_tile.dart';

class News_list_view extends StatefulWidget {
  final String car;
  const News_list_view({
    super.key,
    required this.car,
  });

  @override
  State<News_list_view> createState() => _News_list_viewState();
}

class _News_list_viewState extends State<News_list_view> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(dio: Dio()).getGeneralNews(category: widget.car);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return News_list_view_tile(
              List1: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops  was an error, try later'),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 3,
                    ),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
          }
        });
  }
}
