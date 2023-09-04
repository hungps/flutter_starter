import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@singleton
class LocalDataSource {
  static const String _storagePrefix = '@@app';

  final FlutterSecureStorage _storage;

  const LocalDataSource({required FlutterSecureStorage flutterSecureStorage})
      : _storage = flutterSecureStorage;

  String get _initializedKey => "$_storagePrefix/initialized";

  Future<int?> getInitializedVersion() async {
    return await _storage
        .read(key: _initializedKey)
        .then((value) => int.tryParse(value ?? ''))
        .onError((_, __) => null);
  }

  Future<void> saveInitializedVersion(int versionCode) async {
    return _storage.write(key: _initializedKey, value: versionCode.toString());
  }
}
