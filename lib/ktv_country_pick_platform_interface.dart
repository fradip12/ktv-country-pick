import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ktv_country_pick_method_channel.dart';

abstract class KtvCountryPickPlatform extends PlatformInterface {
  /// Constructs a KtvCountryPickPlatform.
  KtvCountryPickPlatform() : super(token: _token);

  static final Object _token = Object();

  static KtvCountryPickPlatform _instance = MethodChannelKtvCountryPick();

  /// The default instance of [KtvCountryPickPlatform] to use.
  ///
  /// Defaults to [MethodChannelKtvCountryPick].
  static KtvCountryPickPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [KtvCountryPickPlatform] when
  /// they register themselves.
  static set instance(KtvCountryPickPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
