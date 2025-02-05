enum Flavor {
  dev,
  staging,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '[Dev] Starter';
      case Flavor.staging:
        return '[Stg] Starter';
      case Flavor.production:
        return 'Starter';
      default:
        return 'title';
    }
  }

}
