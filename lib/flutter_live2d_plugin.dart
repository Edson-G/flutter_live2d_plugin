
import 'flutter_live2d_plugin_platform_interface.dart';

class FlutterLive2dPlugin {
  Future<String?> getPlatformVersion() {
    return FlutterLive2dPluginPlatform.instance.getPlatformVersion();
  }
}
