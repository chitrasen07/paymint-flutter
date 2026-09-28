/// HTTP boundary for REST calls.
///
/// A Dio implementation will be added when API integration starts.
abstract interface class ApiClient {
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Map<String, dynamic>> post(String path, {Map<String, dynamic>? data});
}
