import 'package:flutter/cupertino.dart';
import 'package:starterflutter/screens/home/HomeScreen.dart';

import 'BuildType.dart';
import 'DebugNavigation.dart';

class AppStartUpFlow {
  static Widget mainScreen() {
    switch (BuildTypeHelper.type()) {
      case BuildType.release:
      case BuildType.profile:
        return const HomeScreen();
      case BuildType.debug:
        return DebugNavigation.screen();
    }
  }
}
