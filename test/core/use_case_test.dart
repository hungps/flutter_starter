import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/core/use_case.dart';

class _AddUseCase extends UseCase<int, int> {
  const _AddUseCase();

  @override
  int call(int params) => params + 1;
}

class _AsyncUseCase extends UseCase<String, String> {
  const _AsyncUseCase();

  @override
  Future<String> call(String params) async => 'hello $params';
}

void main() {
  group('NoParams', () {
    test('can be instantiated', () {
      expect(NoParams(), isA<NoParams>());
    });

    test('two instances are not equal by default (no equality override)', () {
      final a = NoParams();
      final b = NoParams();
      expect(identical(a, b), isFalse);
    });
  });

  group('UseCase', () {
    test('sync use case returns correct value', () {
      const useCase = _AddUseCase();
      expect(useCase(5), 6);
    });

    test('async use case returns correct value', () async {
      const useCase = _AsyncUseCase();
      expect(await useCase('world'), 'hello world');
    });
  });
}
