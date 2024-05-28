import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ktv_country_pick_platform_interface.dart';

/// An implementation of [KtvCountryPickPlatform] that uses method channels.
class MethodChannelKtvCountryPick extends KtvCountryPickPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ktv_country_pick');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
