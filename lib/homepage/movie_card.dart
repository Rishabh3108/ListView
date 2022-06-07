import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  MovieCard(
      {required this.imageUrl, required this.title, required this.description,required this.cardHight,required this.cardWidth});

  String imageUrl;
  String title;
  String description;
  double cardHight;
  double cardWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          height: cardHight,
          width: cardWidth,
          color: Colors.grey,
        ),
        SizedBox(
          height: 10,
        ),
        Text(title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 5,
        ),
        Text(description,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
