#include "include/tdlib_min/tdlib_min_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "tdlib_min_plugin.h"

void TdlibMinPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  tdlib_min::TdlibMinPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
