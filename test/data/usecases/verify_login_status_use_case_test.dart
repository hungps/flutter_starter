import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_starter/core/use_case.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_starter/data/repositories/auth_repository/exceptions.dart';
import 'package:flutter_starter/data/usecases/verify_login_status.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

const _account = Account(id: '2', email: 'b@c.com', name: 'Bob');

void main() {
  late MockAuthRepository mockRepo;
  late VerifyLoginStatusUseCase useCase;

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = VerifyLoginStatusUseCase(authRepository: mockRepo);
  });

  group('VerifyLoginStatusUseCase', () {
    test('calls repository.verifyLoginStatus and returns account', () async {
      when(() => mockRepo.verifyLoginStatus()).thenAnswer((_) async => _account);

      final result = await useCase(NoParams());

      expect(result, _account);
      verify(() => mockRepo.verifyLoginStatus()).called(1);
    });

    test('accepts null params', () async {
      when(() => mockRepo.verifyLoginStatus()).thenAnswer((_) async => _account);

      final result = await useCase(null);

      expect(result, _account);
    });

    test('propagates exception from repository', () async {
      when(() => mockRepo.verifyLoginStatus()).thenThrow(UnauthorizedException());

      expect(() => useCase(null), throwsA(isA<UnauthorizedException>()));
    });
  });
}
