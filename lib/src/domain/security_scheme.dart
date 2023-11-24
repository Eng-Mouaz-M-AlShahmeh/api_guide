/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../api_guide.dart';

/// Add @immutable to make it non changeable
@immutable

/// Define [APISecurityScheme] class
class APISecurityScheme {
  /// Define [securitySchemeType] property as [SecuritySchemeType] and final
  final SecuritySchemeType securitySchemeType;

  /// Define [securitySchemeKey] property as String and final
  final String securitySchemeKey;

  /// Define [securitySchemeName] property as String and final
  final String securitySchemeName;

  /// Define [valueExample] property as String? and final
  final String? valueExample;

  /// Define [tokenExample] property as String? and final
  final String? tokenExample;

  /// Define [userNameExample] property as String? and final
  final String? userNameExample;

  /// Define [passwordExample] property as String? and final
  final String? passwordExample;

  /// Define [digestExample] property as String? and final
  final String? digestExample;

  /// Define [description] property as String? and final
  final String? description;

  /// Define [refreshUrl] property as String? and final
  final String? refreshUrl;

  /// Define [tokenUrl] property as String? and final
  final String? tokenUrl;

  /// Define [authorizeUrl] property as String? and final
  final String? authorizeUrl;

  /// Definition of [APISecurityScheme] instance
  const APISecurityScheme({
    /// Use security scheme type as required attribute
    required this.securitySchemeType,

    /// Use securitySchemeKey property as attribute
    required this.securitySchemeKey,

    /// Use securitySchemeName property as attribute
    required this.securitySchemeName,

    /// Use valueExample property as attribute
    this.valueExample,

    /// Use tokenExample property as attribute
    this.tokenExample,

    /// Use userNameExample property as attribute
    this.userNameExample,

    /// Use passwordExample property as attribute
    this.passwordExample,

    /// Use digestExample property as attribute
    this.digestExample,

    /// Use refreshUrl property as attribute
    this.refreshUrl,

    /// Use tokenUrl property as attribute
    this.tokenUrl,

    /// Use authorizeUrl property as attribute
    this.authorizeUrl,

    /// Use description property as attribute
    this.description,
  });
}
