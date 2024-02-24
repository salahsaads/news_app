import 'package:flutter/material.dart';
import 'package:news_app/Views/views.dart';
import 'package:news_app/model/category_model.dart';

class card1 extends StatelessWidget {
  card1({super.key, required this.card});
  model card;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CategoryView(
                  category: card.Name,
                )));
      },
      child: Container(
          width: 200,
          height: 120,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(card.image)),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            card.Name,
            style: TextStyle(color: Colors.white, fontSize: 28),
          )),
    );
  }
}
