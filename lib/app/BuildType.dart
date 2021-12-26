import 'package:flutter/foundation.dart';

enum BuildType { release, debug, profile }

extension BuildTypeExtension on BuildType {
  BuildType type() {
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
