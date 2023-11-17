/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import domain package files
import 'domain.dart';

/// Add @immutable to make it non changeable
@immutable

/// Define [APIGuideResponse] class
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
