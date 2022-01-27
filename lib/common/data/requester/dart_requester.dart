import 'package:starterflutter/common/data/requester/request_handler.dart';

/*
  * Created by Ahmed Tawfik on 13/1/2022
 */

class RequestOptions {
  bool showLoading;
  Function? inlineError;

  RequestOptions({this.showLoading = false, this.inlineError});
}

class DartRequester {
  final RequestHandler _requestHandler;
  final RequestOptions _defaultValue = RequestOptions();

  DartRequester(this._requestHandler);

  request(Function block, {RequestOptions? options}) async {
    options ??= _defaultValue;
    try {
      _requestHandler.showLoading();
      block(); //TODO: to be in async and await
      _requestHandler.hideLoading();
    } catch (error) {
      ///use catchError after Then
      _handleError(options: options, error: error);
      _requestHandler.hideLoading();
    }
  }

  _handleError({required RequestOptions options, required Object error}) {
    if (options.inlineError != null) {
      options.inlineError!(error);
      return;
    }

    _requestHandler.onError(error.toString());
  }
}
