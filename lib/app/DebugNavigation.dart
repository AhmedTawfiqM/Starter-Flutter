import 'package:flutter/cupertino.dart';
import 'package:starterflutter/screens/home/HomeScreen.dart';

class DebugNavigation {
  late var _homeScreen = HomeScreen();

  Widget screen() {
    return _homeScreen;
  }
}
