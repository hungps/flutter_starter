# CLAUDE.md — AI Assistant Guide for flutter_starter

## Project Overview

This is a production-ready Flutter starter template implementing Clean Architecture. It supports multiple build flavors (dev, staging, production), code generation, BLoC state management, and localization (English + Vietnamese).

---

## Tech Stack

| Concern | Library | Version |
|---------|---------|---------|
| Navigation | auto_route | ^9.3.0+1 |
| State Management | flutter_bloc | ^9.0.0 |
| Dependency Injection | get_it + injectable | ^8.0.3 / ^2.5.0 |
| HTTP Client | dio + retrofit | ^5.8.0+1 / ^4.4.2 |
| Data Classes | freezed | ^2.5.8 |
| JSON Serialization | json_serializable | ^6.9.3 |
| Localization | easy_localization | ^3.0.7+1 |
| Secure Storage | flutter_secure_storage | ^9.2.4 |
| Code Generation | build_runner | ^2.4.14 |

---

## Running the App

This project uses [FVM](https://fvm.app/) to manage Flutter versions.

```bash
# Dev flavor
flutter run --flavor=dev -t lib/main_dev.dart

# Staging flavor
flutter run --flavor=staging -t lib/main_staging.dart

# Production flavor
flutter run --flavor=production -t lib/main_production.dart
```

---

## Code Generation

Many files are auto-generated. Always run code generation after modifying annotated files (freezed models, DI registrations, routes, retrofit clients, etc.).

```bash
# One-time build
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode (during development)
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Generated file suffixes

| Suffix | Generator | Purpose |
|--------|-----------|---------|
| `*.freezed.dart` | freezed | Immutable data classes |
| `*.g.dart` | json_serializable / injectable | JSON & DI setup |
| `*.gr.dart` | auto_route_generator | Route classes |
| `translation_keys.g.dart` | easy_localization | Localization keys |
| `di.config.dart` | injectable_generator | DI container wiring |

Never manually edit generated files. They are excluded from lint analysis (`analysis_options.yaml`).

---

## Directory Structure

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

## Architecture

The project follows **Clean Architecture** with three layers:

### 1. Core Layer (`lib/core/`)
- `UseCase<Data, Params>` — base class for all use cases
- `BaseException`, `NetworkException`, `UnknownException` — exception hierarchy

### 2. Data Layer (`lib/data/`)
- **Entities**: `@freezed` immutable models for requests and domain objects
- **Data Sources**: `NetworkDataSource` (Retrofit + Dio), `LocalDataSource`
- **Repositories**: abstract interface + `@Singleton` default implementation
- **Use Cases**: one class per operation, injected into BLoCs
- **Global States**: `AuthBloc` and `SettingsBloc` managed via `AppBlocObserver`

### 3. Presentation Layer (`lib/presenter/`)
- **Pages**: UI layout + user input only — no business logic
- **BLoCs**: event-driven state machines per page
- **Selectors**: `BlocSelector` / `BlocListener` helpers for fine-grained rebuilds
- **Navigation**: guard-based routing via `auto_route`
- **Themes**: `AppTheme` extends `ThemeExtension`, accessed via `BuildContext` extensions

---

## State Management Conventions

Every page follows this BLoC structure:

```
pages/<feature>/
├── <feature>.dart           # UI page (StatelessWidget annotated with @RoutePage)
├── <feature>_bloc.dart      # @injectable BLoC class
├── <feature>_event.dart     # @freezed event union
├── <feature>_state.dart     # @freezed state class
└── <feature>_selector.dart  # BlocSelector / BlocListener helpers
```

Rules:
- States and events must use `@freezed` for immutability.
- State changes use `state.copyWith(...)`.
- Pages get their BLoC via `provider.get<XBloc>()` (GetIt service locator).
- Use `BlocSelector` over `BlocBuilder` to minimize unnecessary rebuilds.
- Use `BlocListener` (not BlocBuilder) for side effects (navigation, snackbars).

---

## Dependency Injection

All injectable classes are wired in `lib/di.dart` and `lib/di.config.dart` (generated).

```dart
// Singleton — one instance for the app lifetime
@singleton

// Injectable — new instance per injection point
@injectable

// Named dependency
@Named('baseUrl')
```

After adding or modifying `@injectable` / `@singleton` annotations, re-run code generation to update `di.config.dart`.

Access the container anywhere:
```dart
final provider = GetIt.instance;
provider.get<MyBloc>();
```

---

## Navigation

Routes are defined in `lib/presenter/navigation/navigation.dart` using `@AutoRouterConfig`.

```dart
// Mark a page as a route
@RoutePage()
class MyPage extends StatelessWidget { ... }
```

After adding a `@RoutePage`, run code generation to update `navigation.gr.dart`.

**Route Guards** (`navigation.dart`):
- Unauthenticated users visiting `/home` are redirected to `/login`.
- Authenticated users visiting `/login` are redirected to `/home`.
- Guard checks `AuthBloc` state via `provider.get<AuthBloc>()`.

---

## Adding a New Feature Page

Use the Mason brick to scaffold a complete BLoC page:

```bash
mason make bloc_page
```

This generates the page, BLoC, event, state, and selector files. After generation:
1. Annotate the page with `@RoutePage()`.
2. Register the route in `navigation.dart`.
3. Register the BLoC with `@injectable` in its class.
4. Run `flutter pub run build_runner build --delete-conflicting-outputs`.

---

## Localization

Translation files: `lib/presenter/languages/translations/{en,vi}.json`

After editing translations, regenerate keys:
```bash
flutter pub run easy_localization:generate -S lib/presenter/languages/translations -O lib/presenter/languages -f keys -o translation_keys.g.dart
```

Use generated keys in UI:
```dart
import 'package:flutter_starter/presenter/languages/translation_keys.g.dart';

Text(LocaleKeys.someKey.tr())
```

Supported locales: English (`en`), Vietnamese (`vi`).

---

## Themes

Themes live in `lib/presenter/themes/`. Key files:

| File | Purpose |
|------|---------|
| `themes.dart` | `@freezed AppTheme` class |
| `colors.dart` | `AppThemeColors` |
| `typography.dart` | `AppThemeTypography` |
| `styles.dart` | `AppThemeStyles` (buttons, etc.) |
| `extensions.dart` | `BuildContext` extensions |
| `themes/light.dart` | `LightAppTheme` implementation |

Access in widgets:
```dart
context.colors.primary
context.typographies.headlineLarge
```

Theme switching is managed by `SettingsBloc`.

---

## Flavors

Three flavors configured via `flavorizr.yaml`:

| Flavor | Entry Point | Use Case |
|--------|------------|----------|
| `dev` | `lib/main_dev.dart` | Local development |
| `staging` | `lib/main_staging.dart` | QA / pre-production |
| `production` | `lib/main_production.dart` | App Store / Play Store |

Access the current flavor at runtime:
```dart
F.appFlavor  // Flavor enum value
F.title      // Flavor-specific app title
```

---

## Error Handling

- Custom exceptions extend `BaseException` in `lib/core/exception.dart`.
- Domain-specific exceptions live next to their repository (e.g., `auth_repository/exceptions.dart`).
- `AppBlocObserver` in `lib/data/states/bloc_observer.dart` intercepts auth errors globally and dispatches `AuthEvent.loggedOut`.
- Network errors are caught and translated at the Dio interceptor level in `lib/data/sources/network/dio.dart`.

---

## Analysis & Linting

- Base rules: `package:flutter_lints/flutter.yaml`
- Generated files are excluded from analysis.
- Two rules are disabled globally: `invalid_annotation_target` and `use_key_in_widget_constructors`.

Run analysis:
```bash
flutter analyze
```

---

## Testing

Tests live in `/test/`. Currently only the default widget test template is present.

Run tests:
```bash
flutter test
```

When writing tests:
- Unit test use cases and repositories.
- Use `bloc_test` package for BLoC unit tests.
- Use `mocktail` or `mockito` for mocking dependencies.

---

## Key Conventions Summary

1. **Code generation first** — after any annotation change, run `build_runner`.
2. **One BLoC per page** — scope BLoCs to their page, not globally (unless truly global like `AuthBloc`).
3. **Freezed for all state/event/entity classes** — never use mutable models.
4. **Repository pattern** — BLoCs call use cases, use cases call repositories, repositories call data sources.
5. **No business logic in pages** — pages only call BLoC events and render state.
6. **Named constants for translations** — always use `LocaleKeys.*` generated constants, never raw strings.
7. **Guard all protected routes** — add `AutoRouteGuard` for any authenticated route.
8. **Singletons via DI** — never use static instances; always inject via GetIt.
