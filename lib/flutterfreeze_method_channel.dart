import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutterfreeze_platform_interface.dart';

/// An implementation of [FlutterfreezePlatform] that uses method channels.
class MethodChannelFlutterfreeze extends FlutterfreezePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutterfreeze');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
