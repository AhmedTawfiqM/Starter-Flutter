import 'package:flutter/cupertino.dart';

import 'di/AppInjector.dart';

class App{
  setup(){
    //TODO: do stuff here
    WidgetsFlutterBinding.ensureInitialized();
    AppInjector().inject();
  }
}