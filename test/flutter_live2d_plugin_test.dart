import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_live2d_plugin/flutter_live2d_plugin.dart';
import 'package:flutter_live2d_plugin/flutter_live2d_plugin_platform_interface.dart';
import 'package:flutter_live2d_plugin/flutter_live2d_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterLive2dPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterLive2dPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterLive2dPluginPlatform initialPlatform = FlutterLive2dPluginPlatform.instance;

  test('$MethodChannelFlutterLive2dPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterLive2dPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterLive2dPlugin flutterLive2dPlugin = FlutterLive2dPlugin();
    MockFlutterLive2dPluginPlatform fakePlatform = MockFlutterLive2dPluginPlatform();
    FlutterLive2dPluginPlatform.instance = fakePlatform;

    expect(await flutterLive2dPlugin.getPlatformVersion(), '42');
  });
}
