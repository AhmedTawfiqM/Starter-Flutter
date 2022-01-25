import 'package:flutter/foundation.dart';

enum BuildType { release, debug, profile }

BuildType buildType() {
  if (kDebugMode) {
    return BuildType.debug;
  }
  if (kReleaseMode) {
    return BuildType.release;
  }
  if (kProfileMode) {
    return BuildType.profile;
  }
  return BuildType.debug;
}

isDebug() {
  return kDebugMode;
}
