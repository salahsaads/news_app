// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/model/model_card.dart';

class List_View extends StatelessWidget {
  List_View({
    super.key,
  }) {}
  List<model> Card = [
    const model(Name: 'Sports', image: 'assets/sports.avif'),
    const model(Name: 'business', image: 'assets/business.avif'),
    const model(Name: 'entertainment', image: 'assets/entertaiment.avif'),
    const model(Name: 'health', image: 'assets/health.avif'),
    const model(Name: 'science', image: 'assets/science.avif'),
    const model(Name: 'technology', image: 'assets/technology.jpeg'),
    const model(Name: 'general', image: 'assets/general.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Card.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: EdgeInsets.only(right: 10, bottom: 10),
              child: card1(
                card: Card[i],
              ),
            );
          }),
    );
  }
}
