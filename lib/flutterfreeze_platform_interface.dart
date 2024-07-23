import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutterfreeze_method_channel.dart';

abstract class FlutterfreezePlatform extends PlatformInterface {
  /// Constructs a FlutterfreezePlatform.
  FlutterfreezePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterfreezePlatform _instance = MethodChannelFlutterfreeze();

  /// The default instance of [FlutterfreezePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterfreeze].
  static FlutterfreezePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterfreezePlatform] when
  /// they register themselves.
  static set instance(FlutterfreezePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
