import 'package:get/get.dart';

class Code extends GetxController {
  var a = 0.obs;
  increment() {
    a++;
    update();
  }

  List movieData = [
    {
      "Title": "Teen Titans",
      "Type": "Movie1",
      "Poster":
          "https://i0.wp.com/keeping-it-reel.com/wp-content/uploads/2011/06/green_lantern_ver14.jpg"
    },
    {
      "Title": "Teen Titans",
      "Type": "Movie2",
      "Poster":
      "https://i0.wp.com/keeping-it-reel.com/wp-content/uploads/2011/06/green_lantern_ver14.jpg"
    },
    {
      "Title": "Teen Titans",
      "Type": "Movie3",
      "Poster":
      "https://i0.wp.com/keeping-it-reel.com/wp-content/uploads/2011/06/green_lantern_ver14.jpg"
    },
    {
      "Title": "Teen Titans",
      "Type": "Movie4",
      "Poster":
      "https://i0.wp.com/keeping-it-reel.com/wp-content/uploads/2011/06/green_lantern_ver14.jpg"
    },
    {
      "Title": "Teen Titans",
      "Type": "Movie5",
      "Poster":
      "https://i0.wp.com/keeping-it-reel.com/wp-content/uploads/2011/06/green_lantern_ver14.jpg"
    }
  ];
}
