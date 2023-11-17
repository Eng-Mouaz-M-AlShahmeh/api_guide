/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Adding necessary packages
import 'domain.dart';

/// Code starts here
/// Define [APIItem] class
class APIItem {
  /// Define [request] property as APIGuideRequest and final
  final APIGuideRequest request;

  /// Define [response] property as List<APIGuideResponse> and final
  final List<APIGuideResponse> response;

  /// Define [title] property as String and final
  final String title;

  /// Define [urlPath] property as String and final
  final String urlPath;

  /// Define [description] property as String and final
  final String description;

  /// Define [isHovered] property as bool? and final
  bool? isHovered;

  /// Definition of [APIItem] instance
  APIItem({
    /// Use request property as required attribute
    required this.request,

    /// Use response property as required attribute
    required this.response,

    /// Use title property as required attribute
    required this.title,

    /// Use urlPath property as required attribute
    required this.urlPath,

    /// Use description property as required attribute
    required this.description,

    /// Use isHovered property
    this.isHovered,
  });
}

/// End of code
