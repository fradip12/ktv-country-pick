import 'package:flutter_test/flutter_test.dart';
import 'package:ktv_country_pick/ktv_country_pick.dart';
import 'package:ktv_country_pick/ktv_country_pick_platform_interface.dart';
import 'package:ktv_country_pick/ktv_country_pick_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockKtvCountryPickPlatform
    with MockPlatformInterfaceMixin
    implements KtvCountryPickPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final KtvCountryPickPlatform initialPlatform = KtvCountryPickPlatform.instance;

  test('$MethodChannelKtvCountryPick is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelKtvCountryPick>());
  });

  test('getPlatformVersion', () async {
    KtvCountryPick ktvCountryPickPlugin = KtvCountryPick();
    MockKtvCountryPickPlatform fakePlatform = MockKtvCountryPickPlatform();
    KtvCountryPickPlatform.instance = fakePlatform;

    expect(await ktvCountryPickPlugin.getPlatformVersion(), '42');
  });
}
