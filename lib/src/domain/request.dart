/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Adding necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import domain package files
import 'domain.dart';

/// Add @immutable to make it non changeable
@immutable

/// Define [APIGuideRequest] class
class APIGuideRequest {
  /// Define [method] property as HttpRequestMethod and final
  final HttpRequestMethod method;

  /// Define [params] property as List<APIGuideParam> and final
  final List<APIGuideParam> params;

  /// Define [body] property as List<APIGuideRequestBody> and final
  final List<APIGuideRequestBody> body;

  /// Definition of [APIGuideRequest] instance
  const APIGuideRequest({
    /// Use method property as required attribute
    required this.method,

    /// Use params property as required attribute
    required this.params,

    /// Use body property as required attribute
    required this.body,
  });
}
