import 'package:flutter/material.dart';

/// Add @immutable to make it non changeable
@immutable

/// Define [APIServer] class
class APIServer {
  /// Define [title] property as String and final
  final String? title;

  /// Define [urlHost] property as String and final
  final String urlHost;

  /// Definition of [APIServer] instance
  const APIServer({
    /// Use title property as required attribute
    this.title,

    /// Use urlPath property as required attribute
    required this.urlHost,
  });
}
