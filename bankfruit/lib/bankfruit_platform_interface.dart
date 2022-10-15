import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bankfruit_method_channel.dart';

abstract class BankfruitPlatform extends PlatformInterface {
  /// Constructs a BankfruitPlatform.
  BankfruitPlatform() : super(token: _token);

  static final Object _token = Object();

  static BankfruitPlatform _instance = MethodChannelBankfruit();

  /// The default instance of [BankfruitPlatform] to use.
  ///
  /// Defaults to [MethodChannelBankfruit].
  static BankfruitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BankfruitPlatform] when
  /// they register themselves.
  static set instance(BankfruitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
