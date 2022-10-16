import 'package:app_test/screens/movie_detail/movie_detail_view.dart';
import 'package:app_test/screens/movie_list_screen/movie_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavigationViewModel extends GetxController {

  Widget selectView(int index) {
    switch (index) {
      case 0:
        return MovieListView();
      case 1:
        return MovieListView();
      case 2:
        return MovieDetailView();
      case 3:
        return MovieListView();
      default:
        return MovieDetailView();
    }
  }
}
