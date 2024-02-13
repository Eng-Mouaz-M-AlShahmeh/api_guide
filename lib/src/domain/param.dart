/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package
/// Import necessary packages
/// Import [APIGuide] package files
import '../../api_guide.dart';

/// Define [APIGuideParam] class
class APIGuideParam {
  /// Definition of [APIGuideParam] instance
  APIGuideParam({
    /// Use key property as attribute
    required this.key,

    /// Use value property as attribute
    required this.value,

    /// Use type property as required attribute
    required this.propertyType,

    /// Use type parameter as required attribute
    required this.parameterType,

    /// Use isRequired property as required attribute
    required this.isRequired,

    /// Use description property as attribute
    this.description,

    /// Use isSecurityItem property as attribute
    this.isSecurityItem,
  });

  /// Define [key] property as String and final
  final String key;

  /// Define [value] property as String and final
  final String value;

  /// Define [propertyType] property as [PropertyType] and final
  final PropertyType propertyType;

  /// Define [parameterType] property as [ParameterType] and final
  final ParameterType parameterType;

  /// Define [description] property as String? and final
  final String? description;

  /// Define [isRequired] property as bool and final
  final bool isRequired;

  /// Define [isSecurityItem] property as bool and final
  bool? isSecurityItem;
}
