import 'package:demo/homepage/countercode.dart';
import 'package:demo/homepage/movie_card.dart';
import 'package:demo/homepage/next%20page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  Counter({Key? key}) : super(key: key);
  Code t = Get.put(Code());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('counter'),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            t.increment();
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey,
        ),
        body: ListView.separated(
          itemCount: t.movieData.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Get.to(SecondPage(
                  imageUrl: t.movieData[index]['Poster'],
                  description: t.movieData[index]['Type'],
                  title: t.movieData[index]['Title'],
                ));
              },
              child: MovieCard(
                cardWidth:MediaQuery.of(context).size.width,
                cardHight: 400,
                imageUrl: t.movieData[index]['Poster'],
                title: t.movieData[index]['Title'],
                description: t.movieData[index]['Type'],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        ));
  }
}
