/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Adding necessary packages
import 'domain.dart';

/// Code starts here
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

  /// Definition of [APIItem] instance
  const APIItem({
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
  });
}

/// End of code
