import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bankfruit/bankfruit_method_channel.dart';

void main() {
  MethodChannelBankfruit platform = MethodChannelBankfruit();
  const MethodChannel channel = MethodChannel('bankfruit');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
