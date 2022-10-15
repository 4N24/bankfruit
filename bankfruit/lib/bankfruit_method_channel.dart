import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bankfruit_platform_interface.dart';

/// An implementation of [BankfruitPlatform] that uses method channels.
class MethodChannelBankfruit extends BankfruitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bankfruit');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
