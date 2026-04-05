import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_starter/data/sources/local/local.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late MockFlutterSecureStorage mockStorage;
  late LocalDataSource dataSource;

  const storageKey = '@@app/initialized';

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    dataSource = LocalDataSource(flutterSecureStorage: mockStorage);
  });

  group('LocalDataSource.getInitializedVersion', () {
    test('returns parsed int when value is stored', () async {
      when(() => mockStorage.read(key: storageKey)).thenAnswer((_) async => '42');

      final result = await dataSource.getInitializedVersion();

      expect(result, 42);
    });

    test('returns null when storage returns null', () async {
      when(() => mockStorage.read(key: storageKey)).thenAnswer((_) async => null);

      final result = await dataSource.getInitializedVersion();

      expect(result, isNull);
    });

    test('returns null when stored value is not a valid int', () async {
      when(() => mockStorage.read(key: storageKey)).thenAnswer((_) async => 'not-a-number');

      final result = await dataSource.getInitializedVersion();

      expect(result, isNull);
    });

    test('returns null when storage throws an error', () async {
      when(() => mockStorage.read(key: storageKey)).thenThrow(Exception('storage error'));

      final result = await dataSource.getInitializedVersion();

      expect(result, isNull);
    });
  });

  group('LocalDataSource.saveInitializedVersion', () {
    test('writes version code as string to storage', () async {
      when(() => mockStorage.write(key: storageKey, value: '5'))
          .thenAnswer((_) async {});

      await dataSource.saveInitializedVersion(5);

      verify(() => mockStorage.write(key: storageKey, value: '5')).called(1);
    });
  });
}
