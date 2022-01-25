/*
  * Created by Ahmed Tawfik on 13/1/2022
 */

mixin RequestHandler {
  void showLoading();

  void hideLoading();

  void onError(String msg);

  onHandleErrorFailed(Exception exception);
}
