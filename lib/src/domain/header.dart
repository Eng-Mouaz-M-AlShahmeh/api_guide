/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Code starts here
@immutable
class APIGuideHeader {
  /// Definition of [APIGuideHeader] instance
  const APIGuideHeader(
    /// Use key property as attribute
    this.key,

    /// Use value property as attribute
    this.value,

    /// Use description property as attribute
    this.description,
  );

  /// Define [key] property as String and final
  final String key;

  /// Define [value] property as String and final
  final String value;

  /// Define [description] property as String? and final
  final String? description;
}

/// End of code
