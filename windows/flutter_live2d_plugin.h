#ifndef FLUTTER_PLUGIN_FLUTTER_LIVE2D_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_LIVE2D_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_live2d_plugin {

class FlutterLive2dPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterLive2dPlugin();

  virtual ~FlutterLive2dPlugin();

  // Disallow copy and assign.
  FlutterLive2dPlugin(const FlutterLive2dPlugin&) = delete;
  FlutterLive2dPlugin& operator=(const FlutterLive2dPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_live2d_plugin

#endif  // FLUTTER_PLUGIN_FLUTTER_LIVE2D_PLUGIN_H_
