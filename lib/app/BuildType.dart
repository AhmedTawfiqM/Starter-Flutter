import 'package:flutter/foundation.dart';

enum BuildType { release, debug, profile }

class BuildTypeHelper {
  static BuildType type() {
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
}

extension BuildTypeExtension on BuildType{

}
