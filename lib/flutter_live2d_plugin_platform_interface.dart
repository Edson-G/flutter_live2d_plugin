import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_live2d_plugin_method_channel.dart';

abstract class FlutterLive2dPluginPlatform extends PlatformInterface {
  /// Constructs a FlutterLive2dPluginPlatform.
  FlutterLive2dPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterLive2dPluginPlatform _instance = MethodChannelFlutterLive2dPlugin();

  /// The default instance of [FlutterLive2dPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterLive2dPlugin].
  static FlutterLive2dPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterLive2dPluginPlatform] when
  /// they register themselves.
  static set instance(FlutterLive2dPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
