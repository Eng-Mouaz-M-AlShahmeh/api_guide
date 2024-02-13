import 'package:flutter/material.dart';

/// Add @immutable to make it non changeable
@immutable

/// Define [APIGuideHeader] class
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
