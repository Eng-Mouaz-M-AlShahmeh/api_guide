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

/// Define [APIGuideRequestBody] class
class APIGuideRequestBody {
  /// Define [key] property as String and final
  final String key;

  /// Define [value] property as dynamic and final
  final dynamic value;

  /// Define [type] property as [PropertyType] and final
  final PropertyType type;

  /// Define [description] property as String and final
  final String description;

  /// Define [isRequired] property as bool and final
  final bool isRequired;

  /// Definition of [APIGuideRequestBody] instance
  const APIGuideRequestBody({
    /// Use key property as required attribute
    required this.key,

    /// Use value property as required attribute
    required this.value,

    /// Use type property as required attribute
    required this.type,

    /// Use description property as required attribute
    required this.description,

    /// Use isRequired property as required attribute
    required this.isRequired,
  });
}
