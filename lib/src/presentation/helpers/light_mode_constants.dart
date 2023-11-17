/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Start Light Mode
/// Add @immutable to make it non changeable
@immutable

/// Define [ConstantsLightMode] class
class ConstantsLightMode {
  /// Define [ConstantsLightMode] constructor
  const ConstantsLightMode();

  /// Start Colors Attributes

  /// Define [blackColor] attribute
  static const Color blackColor = Colors.black87;

  /// Define [whiteColor] attribute
  static const Color whiteColor = Colors.white;

  /// Define [greyLightColor] attribute
  static Color? greyLightColor = Colors.grey[200];

  /// Get the theme color
  static Color? themeColor(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes' states
    final themeState = context.read<ThemeProvider>();

    /// Check the value of theme color and select the appropriate color
    switch (themeState.themeColor) {
      /// Black Theme Color
      case APIGuideThemeColor.black:

        /// Set the value to black
        return Colors.black;

      /// Indigo Theme Color
      case APIGuideThemeColor.indigo:

        /// Set the value to indigo
        return Colors.indigo[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.green:

        /// Set the value to green
        return Colors.green[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.red:

        /// Set the value to red
        return Colors.red[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.orange:

        /// Set the value to orange
        return Colors.orange[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.cyan:

        /// Set the value to cyan
        return Colors.cyan[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.blue:

        /// Set the value to blue
        return Colors.blue[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.purple:

        /// Set the value to purple
        return Colors.purple[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.amber:

        /// Set the value to amber
        return Colors.amber[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.brown:

        /// Set the value to brown
        return Colors.brown[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.lime:

        /// Set the value to lime
        return Colors.lime[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.pink:

        /// Set the value to pink
        return Colors.pink[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.teal:

        /// Set the value to teal
        return Colors.teal[600];

      /// Indigo Theme Color
      case APIGuideThemeColor.yellow:

        /// Set the value to yellow
        return Colors.yellow[600];

      /// If none of the above cases match
      default:

        /// Set the default value to indigo
        return Colors.indigo[600];
    }
  }

  /// Get the light theme color
  static Color? themeColorLight(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes' states
    final themeState = context.read<ThemeProvider>();

    /// Check the value of theme color and select the appropriate color
    switch (themeState.themeColor) {
      /// Black Theme Color
      case APIGuideThemeColor.black:

        /// Set the value to black
        return Colors.white;

      /// Indigo Theme Color
      case APIGuideThemeColor.indigo:

        /// Set the value to indigo
        return Colors.indigo[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.green:

        /// Set the value to green
        return Colors.green[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.red:

        /// Set the value to red
        return Colors.red[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.orange:

        /// Set the value to orange
        return Colors.orange[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.cyan:

        /// Set the value to cyan
        return Colors.cyan[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.blue:

        /// Set the value to blue
        return Colors.blue[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.purple:

        /// Set the value to purple
        return Colors.purple[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.amber:

        /// Set the value to amber
        return Colors.amber[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.brown:

        /// Set the value to brown
        return Colors.brown[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.lime:

        /// Set the value to lime
        return Colors.lime[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.pink:

        /// Set the value to pink
        return Colors.pink[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.teal:

        /// Set the value to teal
        return Colors.teal[100];

      /// Indigo Theme Color
      case APIGuideThemeColor.yellow:

        /// Set the value to yellow
        return Colors.yellow[100];

      /// If none of the above cases match
      default:

        /// Set the default value to indigo
        return Colors.indigo[100];
    }
  }

  /// End Colors Attributes
}

/// End Light Mode
