import 'package:flutter_test/flutter_test.dart';
import 'package:flutterfreeze/flutterfreeze.dart';
import 'package:flutterfreeze/flutterfreeze_platform_interface.dart';
import 'package:flutterfreeze/flutterfreeze_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterfreezePlatform
    with MockPlatformInterfaceMixin
    implements FlutterfreezePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterfreezePlatform initialPlatform = FlutterfreezePlatform.instance;

  test('$MethodChannelFlutterfreeze is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterfreeze>());
  });

  test('getPlatformVersion', () async {
    Flutterfreeze flutterfreezePlugin = Flutterfreeze();
    MockFlutterfreezePlatform fakePlatform = MockFlutterfreezePlatform();
    FlutterfreezePlatform.instance = fakePlatform;

    expect(await flutterfreezePlugin.getPlatformVersion(), '42');
  });
}
