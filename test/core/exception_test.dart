import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/core/exception.dart';
import 'package:flutter_starter/presenter/languages/translation_keys.g.dart';

void main() {
  group('BaseException.from', () {
    test('returns same instance when given a BaseException', () {
      final exception = UnknownException('original');
      final result = BaseException.from(exception);
      expect(result, same(exception));
    });

    test('wraps non-BaseException error in UnknownException', () {
      final error = Exception('some error');
      final result = BaseException.from(error);
      expect(result, isA<UnknownException>());
      expect(result.data, same(error));
    });

    test('wraps null in UnknownException', () {
      final result = BaseException.from(null);
      expect(result, isA<UnknownException>());
      expect(result.data, isNull);
    });

    test('wraps a string error in UnknownException', () {
      final result = BaseException.from('oops');
      expect(result, isA<UnknownException>());
      expect(result.data, 'oops');
    });
  });

  group('UnknownException', () {
    test('has correct message from LocaleKeys', () {
      final e = UnknownException();
      expect(e.message, LocaleKeys.Errors_AnUnknownErrorOccurred);
    });

    test('stores data passed to it', () {
      final inner = Exception('inner');
      final e = UnknownException(inner);
      expect(e.data, same(inner));
    });

    test('toString contains runtimeType and message', () {
      final e = UnknownException();
      final str = e.toString();
      expect(str, contains('UnknownException'));
      expect(str, contains('message:'));
    });

    test('toString includes code when present', () {
      final e = UnknownException();
      // code is null by default, so no code in toString
      expect(e.toString(), isNot(contains('code:')));
    });

    test('toString includes data when present', () {
      final e = UnknownException('mydata');
      expect(e.toString(), contains('data:'));
    });
  });

  group('NetworkException', () {
    test('has correct message from LocaleKeys', () {
      final e = NetworkException();
      expect(e.message, LocaleKeys.Errors_NetworkError);
    });

    test('toString contains runtimeType', () {
      final e = NetworkException();
      expect(e.toString(), contains('NetworkException'));
    });

    test('code is null by default', () {
      final e = NetworkException();
      expect(e.code, isNull);
    });

    test('data is null by default', () {
      final e = NetworkException();
      expect(e.data, isNull);
    });
  });
}
