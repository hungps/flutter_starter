# Flutter Starter

A production-ready Flutter starter template built with Clean Architecture, multi-flavor support, BLoC state management, and localization (English + Vietnamese).

## Tech Stack

| Concern | Library |
|---------|---------|
| Navigation | [auto_route](https://pub.dev/packages/auto_route) ^9.3.0+1 |
| State Management | [flutter_bloc](https://pub.dev/packages/flutter_bloc) ^9.0.0 |
| Dependency Injection | [get_it](https://pub.dev/packages/get_it) + [injectable](https://pub.dev/packages/injectable) |
| HTTP Client | [dio](https://pub.dev/packages/dio) + [retrofit](https://pub.dev/packages/retrofit) |
| Data Classes | [freezed](https://pub.dev/packages/freezed) ^2.5.8 |
| JSON Serialization | [json_serializable](https://pub.dev/packages/json_serializable) ^6.9.3 |
| Localization | [easy_localization](https://pub.dev/packages/easy_localization) ^3.0.7+1 |
| Secure Storage | [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) ^9.2.4 |
| Code Generation | [build_runner](https://pub.dev/packages/build_runner) ^2.4.14 |

---

## Getting Started

### Prerequisites

1. Install [FVM](https://fvm.app/docs/getting_started/installation) to manage the Flutter SDK version.

2. In the project directory, install the required Flutter version:

   ```bash
   fvm install
   ```

   > If you are not using FVM, make sure your local Flutter version matches the one specified in `.fvm/fvm_config.json`.

3. Verify your environment:

   ```bash
   flutter doctor
   ```

> This project is optimized for [Visual Studio Code](https://code.visualstudio.com/) users.

---

## Running the App

This project uses build flavors to separate environments:

| Flavor | Command | Use Case |
|--------|---------|----------|
| `dev` | `flutter run --flavor=dev -t lib/main_dev.dart` | Local development |
| `staging` | `flutter run --flavor=staging -t lib/main_staging.dart` | QA / pre-production |
| `production` | `flutter run --flavor=production -t lib/main_production.dart` | App Store / Play Store |

---

## Code Generation

Many files are auto-generated (routes, DI wiring, JSON serialization, freezed models). Run code generation after modifying any annotated file:

```bash
# One-time build
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode during development
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Generated file types

| Suffix | Generator | Purpose |
|--------|-----------|---------|
| `*.freezed.dart` | freezed | Immutable data classes |
| `*.g.dart` | json_serializable / injectable | JSON serialization & DI setup |
| `*.gr.dart` | auto_route_generator | Route classes |
| `translation_keys.g.dart` | easy_localization | Localization keys |
| `di.config.dart` | injectable_generator | DI container wiring |

> Never manually edit generated files — they are excluded from lint analysis.

---

## Project Structure

```
lib/
├── core/                   # Base abstractions (UseCase, Exception)
├── data/
│   ├── entities/           # @freezed data models (request/response)
│   ├── sources/
│   │   ├── network/        # Retrofit REST client + Dio configuration
│   │   └── local/          # Local data source
│   ├── repositories/       # Abstract interfaces + default implementations
│   ├── usecases/           # Single-purpose business operations
│   └── states/             # Global BLoC states (AuthBloc, SettingsBloc)
├── presenter/
│   ├── app.dart            # MaterialApp, routing, theme, localization
│   ├── pages/              # Feature pages (splash, login, home)
│   ├── navigation/         # AppRouter + route guards
│   ├── themes/             # AppTheme, colors, typography, styles
│   ├── languages/          # Translation JSON + generated keys
│   └── widgets/            # Shared widgets
├── services/               # Infrastructure services (token manager)
├── di.dart                 # DI container bootstrap
├── flavors.dart            # Flavor enum + F config class
└── main*.dart              # Flavor-specific entry points
```

---

## Developing

### Adding a New Page

1. Activate Mason CLI (first time only):

   ```bash
   flutter pub global activate mason_cli
   mason get
   ```

2. Scaffold a new BLoC page:

   ```bash
   mason make bloc_page
   ```

   This generates the page, BLoC, event, state, and selector files.

3. After generation:
   - Annotate the page with `@RoutePage()`.
   - Register the route in `lib/presenter/navigation/navigation.dart`.
   - Annotate the BLoC with `@injectable`.
   - Run code generation (see above).

> VS Code users: press `Cmd + Shift + P`, type `Run Task`, and select `mason: bloc_page`.

### Adding Translations

1. Add the new key/value to each language file:

   ```
   lib/presenter/languages/translations/en.json
   lib/presenter/languages/translations/vi.json
   ```

2. Regenerate the translation keys:

   ```bash
   flutter pub run easy_localization:generate \
     -f keys \
     -S lib/presenter/languages/translations \
     -O lib/presenter/languages \
     -o translation_keys.g.dart
   ```

3. Use the generated key in your widget:

   ```dart
   import 'package:flutter_starter/presenter/languages/translation_keys.g.dart';

   Text(LocaleKeys.someKey.tr())
   ```

> VS Code users: press `Cmd + Shift + P`, type `Run Task`, and select `easy_localization: generate keys`.

---

## Architecture

The project follows **Clean Architecture** with three layers:

- **Core** (`lib/core/`) — `UseCase<Data, Params>` base class and exception hierarchy.
- **Data** (`lib/data/`) — entities, data sources, repositories, and use cases. BLoCs call use cases; use cases call repositories; repositories call data sources.
- **Presentation** (`lib/presenter/`) — pages (UI only), BLoCs (event-driven state machines), navigation guards, themes, and shared widgets.

Every feature page follows this structure:

```
pages/<feature>/
├── <feature>.dart           # UI (StatelessWidget + @RoutePage)
├── <feature>_bloc.dart      # @injectable BLoC
├── <feature>_event.dart     # @freezed event union
├── <feature>_state.dart     # @freezed state class
└── <feature>_selector.dart  # BlocSelector / BlocListener helpers
```

---

## Testing

```bash
flutter test
```

- Unit test use cases and repositories.
- Use `bloc_test` for BLoC unit tests.
- Use `mocktail` or `mockito` for mocking dependencies.

---

## Analysis & Linting

```bash
flutter analyze
```

Base rules: `package:flutter_lints/flutter.yaml`. Generated files are excluded from analysis.
