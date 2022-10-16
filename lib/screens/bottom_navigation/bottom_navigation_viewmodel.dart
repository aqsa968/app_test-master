import 'package:app_test/screens/watch/watch_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavigationViewModel extends GetxController {

  Widget selectView(int index) {
    switch (index) {
      case 0:
        return WatchView();
      case 1:
        return WatchView();
      case 2:
        return WatchView();
      case 3:
        return WatchView();
      default:
        return WatchView();
    }
  }
}
