import 'package:demo/homepage/movie_card.dart';
import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {

  SecondPage(
      {required this.imageUrl, required this.title, required this.description});

  String imageUrl;
  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MovieCard(
            cardHight: 500,
            cardWidth: MediaQuery.of(context).size.width,
            imageUrl:imageUrl,
            title:title,
            description:description,
          )
        ],
      ),
    );
  }
}
