import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalDataSource {
  static const String _prefix = '@@app';

  final String key;
  final FlutterSecureStorage _storage;

  const LocalDataSource._(this.key, this._storage);

  const LocalDataSource(FlutterSecureStorage storage, [String key = 'default'])
      : this._(key, storage);

  String get _initializedKey => "$_prefix/$key/initialized";

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
