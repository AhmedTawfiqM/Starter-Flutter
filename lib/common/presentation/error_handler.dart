import 'package:flutter/foundation.dart';

import 'app_toast.dart';

class AppErrorHandler {
  AppErrorHandler() {
    _setup();
  }

  _setup() {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      onError(details);
    };
  }

  onError(FlutterErrorDetails details) {
    var msg = '${details.library} : ${details.exception}';
    showDebugToast(msg);
  }

  onStringError(String error) {
    showDebugToast(error);
  }

  onExcError(Exception exception) {
    showDebugToast(exception.toString());
  }

  onStackError(StackTrace stack) {
    showDebugToast(stack.toString());
  }

  reportError() {
    //TODO: do stuff here like Google Analytics , Adjust
  }
}

///https://pub.dev/packages/catcher
