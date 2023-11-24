/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Adding necessary packages
import 'domain.dart';

/// Define [APIItem] class
class APIItem {
  /// Define [request] property as APIGuideRequest and final
  final APIGuideRequest request;

  /// Define [response] property as List<APIGuideResponse> and final
  final List<APIGuideResponse> response;

  /// Define [securitySchemes] property as List<APISecurityScheme> and final
  final List<APISecurityScheme> securitySchemes;

  /// Define [title] property as String and final
  final String title;

  /// Define [urlPath] property as String and final
  final String urlPath;

  /// Define [description] property as String and final
  final String description;

  /// Define [isDeprecated] property as bool? and final
  final bool? isDeprecated;

  /// Define [isInternal] property as bool? and final
  final bool? isInternal;

  /// Define [isOptionalSecurity] property as bool? and final
  final bool? isOptionalSecurity;

  /// Define [isHovered] property as bool? and final
  bool? isHovered;

  /// Definition of [APIItem] instance
  APIItem({
    /// Use request property as required attribute
    required this.request,

    /// Use response property as required attribute
    required this.response,

    /// Use securitySchemes property as required attribute
    required this.securitySchemes,

    /// Use title property as required attribute
    required this.title,

    /// Use urlPath property as required attribute
    required this.urlPath,

    /// Use description property as required attribute
    required this.description,

    /// Use isDeprecated property
    this.isDeprecated,

    /// Use isInternal property
    this.isInternal,

    /// Use isHovered property
    this.isHovered,

    /// Use isInternal property
    this.isOptionalSecurity,
  });
}
