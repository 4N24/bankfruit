import 'package:flutter_test/flutter_test.dart';
import 'package:bankfruit/bankfruit.dart';
import 'package:bankfruit/bankfruit_platform_interface.dart';
import 'package:bankfruit/bankfruit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBankfruitPlatform
    with MockPlatformInterfaceMixin
    implements BankfruitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BankfruitPlatform initialPlatform = BankfruitPlatform.instance;

  test('$MethodChannelBankfruit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBankfruit>());
  });

  test('getPlatformVersion', () async {
    Bankfruit bankfruitPlugin = Bankfruit();
    MockBankfruitPlatform fakePlatform = MockBankfruitPlatform();
    BankfruitPlatform.instance = fakePlatform;

    expect(await bankfruitPlugin.getPlatformVersion(), '42');
  });
}
