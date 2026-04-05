import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_starter/data/repositories/auth_repository/exceptions.dart';
import 'package:flutter_starter/data/usecases/login.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

const _account = Account(id: '1', email: 'a@b.com', name: 'Alice');

void main() {
  late MockAuthRepository mockRepo;
  late LoginUseCase useCase;

  setUp(() {
    mockRepo = MockAuthRepository();
    useCase = LoginUseCase(authRepository: mockRepo);
  });

  group('LoginUseCase', () {
    test('calls repository.login with correct params and returns account', () async {
      when(() => mockRepo.login(username: 'alice', password: 'secret'))
          .thenAnswer((_) async => _account);

      final result = await useCase((username: 'alice', password: 'secret'));

      expect(result, _account);
      verify(() => mockRepo.login(username: 'alice', password: 'secret')).called(1);
    });

    test('propagates exception from repository', () async {
      when(() => mockRepo.login(username: any(named: 'username'), password: any(named: 'password')))
          .thenThrow(LoginInvalidEmailPasswordException());

      expect(
        () => useCase((username: 'bad', password: 'creds')),
        throwsA(isA<LoginInvalidEmailPasswordException>()),
      );
    });
  });
}
