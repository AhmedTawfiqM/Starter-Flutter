import 'package:starterflutter/app/di/AppInjector.dart';
import 'package:starterflutter/common/data/requester/request_handler.dart';
import 'package:starterflutter/common/presentation/error_handler.dart';
import 'dart_requester.dart';

/*
  * Created by Ahmed Tawfik on 13/1/2022
 */

class AppRequester {
  final RequestOptions _defaultValue = RequestOptions();

  late final DartRequester _requester = DartRequester(AppRequestHandler());

  request(Function block, {RequestOptions? options}) async {
    options ??= _defaultValue;

    _requester.request(block, options: options);
  }
}

class AppRequestHandler implements RequestHandler {

  @override
  void showLoading() {
    // TODO: implement showLoading 'dialog'
  }

  @override
  void hideLoading() {
    // TODO: implement hideLoading 'dialog'
  }

  @override
  void onError(String error) {
    getIt.get<AppErrorHandler>().onStringError(error.toString());
  }

  @override
  onHandleErrorFailed(Exception exception) {
    getIt.get<AppErrorHandler>().onStringError(exception.toString());
  }
}
