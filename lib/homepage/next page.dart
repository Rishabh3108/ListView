import 'package:demo/homepage/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            imageUrl: imageUrl,
            title: title,
            description: description,
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Get.snackbar('Cart', 'Successfully added',backgroundColor: Colors.white);
            },
            child: Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.add), Text('Add to cart')],
              ),
              color: Colors.green[400],
            ),
          ),
          GestureDetector(onTap: (){Get.snackbar('Buy', 'Successfully Buy',backgroundColor: Colors.white);
          },
            child: Container(margin: EdgeInsets.only(top: 10,bottom: 20),
              height: 50,
              width: 300,
              color: Colors.blue[400],
              child: (Text('Buy now')),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
