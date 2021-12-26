import 'package:starterflutter/common/data/shared_pref/shar_pref.dart';

import 'data_keys.dart';

class SharedPrefHelper {

  setUserId(String id) {
    AppSharedPref.putData(key: PrefKey.userId, value: id);
  }

  bool isLogin() {
    var userId = AppSharedPref.getData(PrefKey.userId);
    return userId != null;
  }
}
