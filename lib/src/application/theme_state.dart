/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
/// Define [ThemeStateNotifier] class for adding isDarkMode state changes
class ThemeStateNotifier extends ChangeNotifier {
  /// Define [_isDarkMode] attribute with default value of false
  bool _isDarkMode = false;

  /// Define bool getter of [_isDarkMode] called [isDarkMode]
  bool get isDarkMode => _isDarkMode;

  /// Define [toggleIsDarkMode] function which toggle
  /// the state of [_isDarkMode] value
  toggleIsDarkMode() {
    /// Negate the value of [_isDarkMode]
    _isDarkMode = !_isDarkMode;

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }
}

/// Define [ThemeNotifierProvider] which extends the InheritedWidget
class ThemeNotifierProvider extends InheritedWidget {
  /// Define [themeStateNotifier] from type of [ThemeStateNotifier]
  final ThemeStateNotifier themeStateNotifier;

  /// Define [ThemeNotifierProvider] constructor
  ThemeNotifierProvider({
    /// Add required [themeStateNotifier] parameter
    required this.themeStateNotifier,

    /// Add required [child] parameter from type of Widget
    required Widget child,
  }) : super(child: child);

  /// Make functionality of [of(BuildContext context)] of the InheritedWidget
  static ThemeNotifierProvider of(BuildContext context) {
    /// Return the InheritedWidget with context
    return context.dependOnInheritedWidgetOfExactType<ThemeNotifierProvider>()!;
  }

  /// Override the [updateShouldNotify] to make notify changes
  @override
  bool updateShouldNotify(ThemeNotifierProvider oldWidget) {
    /// Check if state is changed or not
    return themeStateNotifier != oldWidget.themeStateNotifier;
  }
}

/// End of code
