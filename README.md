# flutter_starter

A new Flutter project.

## Getting Started

- Install [Fvm](https://fvm.app/docs/getting_started/installation).

- Go to this project folder and run `fvm install` to install the correctsponding Flutter SDK version.

> If you are not using Fvm, make sure your Flutter version in your local machine matched with the `.fvm/fvm_config.json`

- Run `flutter doctor` and make sure that there is no error occurred.

- Clone `.env.example` to `.env`, `.env.staging` and `.env.production` and update the values accordingly to your build environment.

> This project is optimized for [Visual Studio Code](https://code.visualstudio.com/) user

## Developing

### Running the app

- Run `flutter run --flavor=dev` to run the app in development environment.
- Run `flutter run --flavor=staging` to run the app in staging environment.
- Run `flutter run --flavor=production` to run the app in production environment.

### When adding a new translated text

- Add the translated text to `lib/presenter/languages/translations/<langualge>.json`

- Run this script to generate the translation keys

```bash
flutter pub run easy_localization:generate \
  -f keys \
  -S lib/presenter/languages/translations \
  -O lib/presenter/languages \
  -o translation_keys.g.dart
```

> If you are using Visual Studio Code, you can run this script by pressing `Cmd + Shift + P` and type `Run Task` and select `easy_localization: generate keys`

### When adding new page

- Run this script to activate `mason_cli` (if you haven't done it before)

```bash
flutter pub global activate mason_cli
mason get
```

- Run this script to generate a new page with basic cubit

```bash
mason make bloc_page
```

> If you are using Visual Studio Code, you can run this script by pressing `Cmd + Shift + P` and type `Run Task` and select `mason: bloc_page`
