abstract class Constants {
  /// Base Url
  static const String baseUrl = String.fromEnvironment('APP_BASE_URL',
      defaultValue: 'https://api.glpos.com');

  /// App Flavor
  static const String flavor =
      String.fromEnvironment('APP_FLAVOR', defaultValue: 'PROD');
}
