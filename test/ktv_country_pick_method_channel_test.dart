import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ktv_country_pick/ktv_country_pick_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelKtvCountryPick platform = MethodChannelKtvCountryPick();
  const MethodChannel channel = MethodChannel('ktv_country_pick');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
