import 'package:flutter/material.dart';

class AppNavigator{
  void navigateByWidget(BuildContext context, Widget to) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => to));
  }

  void navigateByName(BuildContext context, String to) {
    Navigator.of(context).pushNamed(to);
  }

  void navigateByReplacement(BuildContext context, Widget to) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => to)
    );
  }
}

