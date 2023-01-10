import 'package:flutter_config/flutter_config.dart';

class AppEnv {
  static String _get(String key) => FlutterConfig.get(key);

  static String get appId => _get('APP_ID');

  static String get appName => _get('APP_NAME');

  static String get versionCode => _get('APP_VERSION_CODE');

  static String get versionName => _get('APP_VERSION_NAME');
}
