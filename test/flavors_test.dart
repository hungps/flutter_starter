import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/flavors.dart';

void main() {
  tearDown(() {
    F.appFlavor = null;
  });

  group('Flavor enum', () {
    test('contains dev, staging, production values', () {
      expect(Flavor.values, containsAll([Flavor.dev, Flavor.staging, Flavor.production]));
    });
  });

  group('F.name', () {
    test('returns empty string when appFlavor is null', () {
      F.appFlavor = null;
      expect(F.name, '');
    });

    test('returns "dev" for dev flavor', () {
      F.appFlavor = Flavor.dev;
      expect(F.name, 'dev');
    });

    test('returns "staging" for staging flavor', () {
      F.appFlavor = Flavor.staging;
      expect(F.name, 'staging');
    });

    test('returns "production" for production flavor', () {
      F.appFlavor = Flavor.production;
      expect(F.name, 'production');
    });
  });

  group('F.title', () {
    test('returns "title" when appFlavor is null', () {
      F.appFlavor = null;
      expect(F.title, 'title');
    });

    test('returns "[Dev] Starter" for dev flavor', () {
      F.appFlavor = Flavor.dev;
      expect(F.title, '[Dev] Starter');
    });

    test('returns "[Stg] Starter" for staging flavor', () {
      F.appFlavor = Flavor.staging;
      expect(F.title, '[Stg] Starter');
    });

    test('returns "Starter" for production flavor', () {
      F.appFlavor = Flavor.production;
      expect(F.title, 'Starter');
    });
  });
}
