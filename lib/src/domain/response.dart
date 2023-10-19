/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Adding necessary packages
import 'domain.dart';

/// Code starts here
class APIGuideResponse {
  /// Define [statusCode] property as HttpResponseStatusCode and final
  final HttpResponseStatusCode statusCode;

  /// Define [headers] property as List<APIGuideHeader> and final
  final List<APIGuideHeader> headers;

  /// Define [body] property as Map<String, dynamic> and final
  final Map<String, dynamic> body;

  /// Definition of [APIGuideResponse] instance
  const APIGuideResponse({
    /// Use statusCode property as required attribute
    required this.statusCode,

    /// Use headers property as required attribute
    required this.headers,

    /// Use body property as required attribute
    required this.body,
  });
}

/// End of code
