
import 'flutterfreeze_platform_interface.dart';

class Flutterfreeze {
  Future<String?> getPlatformVersion() {
    return FlutterfreezePlatform.instance.getPlatformVersion();
  }
}
