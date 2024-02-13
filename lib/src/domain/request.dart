import 'domain.dart';

/// Define [APIGuideRequest] class
class APIGuideRequest {
  /// Define [method] property as HttpRequestMethod and final
  final HttpRequestMethod method;

  /// Define [params] property as List<APIGuideParam> and final
  List<APIGuideParam> params;

  /// Define [body] property as List<APIGuideRequestBody> and final
  final List<APIGuideRequestBody> body;

  /// Definition of [APIGuideRequest] instance
  APIGuideRequest({
    /// Use method property as required attribute
    required this.method,

    /// Use params property as required attribute
    required this.params,

    /// Use body property as required attribute
    required this.body,
  });
}
