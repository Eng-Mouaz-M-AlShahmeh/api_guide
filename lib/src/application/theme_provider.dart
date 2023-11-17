/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/foundation.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [ThemeProvider] class which extends the [ChangeNotifier]
class ThemeProvider extends ChangeNotifier {
  /// Define initial attributes values
  /// Define [_isDarkMode] attribute with default value of false
  bool _isDarkMode = false;

  /// Define [_themeColor] attribute with default value of indigo
  APIGuideThemeColor? _themeColor;

  /// Define Getters
  /// Define bool getter of [_isDarkMode] called [isDarkMode]
  bool get isDarkMode => _isDarkMode;

  /// Define APIGuideThemeColor getter of [_themeColor] called [themeColor]
  APIGuideThemeColor? get themeColor => _themeColor;

  /// Define Setters
  /// Define [toggleIsDarkMode] function which toggle
  /// the state of [_isDarkMode] value
  toggleIsDarkMode() {
    /// Negate the value of [_isDarkMode]
    _isDarkMode = !_isDarkMode;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [setThemeColor] function which set
  /// the state of [_themeColor] value
  setThemeColor(APIGuideThemeColor val) {
    /// Set the value of [_themeColor]
    _themeColor = val;

    /// Notify listeners to rebuild widgets that
    /// depend on this ChangeNotifier
    notifyListeners();
  }

  /// Define [ThemeProvider] constructor
  ThemeProvider();
}
