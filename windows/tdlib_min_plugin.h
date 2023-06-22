#ifndef FLUTTER_PLUGIN_TDLIB_MIN_PLUGIN_H_
#define FLUTTER_PLUGIN_TDLIB_MIN_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace tdlib_min {

class TdlibMinPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TdlibMinPlugin();

  virtual ~TdlibMinPlugin();

  // Disallow copy and assign.
  TdlibMinPlugin(const TdlibMinPlugin&) = delete;
  TdlibMinPlugin& operator=(const TdlibMinPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace tdlib_min

#endif  // FLUTTER_PLUGIN_TDLIB_MIN_PLUGIN_H_
