/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Adding necessary packages
import 'domain.dart';

/// Code starts here
class APIGuideRequest {
  /// Define [method] property as HttpRequestMethod and final
  final HttpRequestMethod method;

  /// Define [params] property as List<APIGuideParam> and final
  final List<APIGuideParam> params;

  /// Define [headers] property as List<APIGuideHeader> and final
  final List<APIGuideHeader> headers;

  /// Define [body] property as List<APIGuideRequestBody> and final
  final List<APIGuideRequestBody> body;

  /// Definition of [APIGuideRequest] instance
  const APIGuideRequest({
    /// Use method property as required attribute
    required this.method,

    /// Use params property as required attribute
    required this.params,

    /// Use headers property as required attribute
    required this.headers,

    /// Use body property as required attribute
    required this.body,
  });
}

/// End of code
