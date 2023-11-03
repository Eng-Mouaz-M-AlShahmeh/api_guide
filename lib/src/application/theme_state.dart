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
  /// Define initial attributes values
  /// Define [_isDarkMode] attribute with default value of false
  bool _isDarkMode = false;

  /// Define Getters
  /// Define bool getter of [_isDarkMode] called [isDarkMode]
  bool get isDarkMode => _isDarkMode;

  /// Define Setters
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
  static ThemeNotifierProvider of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<ThemeNotifierProvider>()!;
    } else {
      /// If listen is set to false, return a dummy InheritedWidget that doesn't rebuild its dependents
      return ThemeNotifierProvider(
        /// Create a new instance without rebuilding
        themeStateNotifier: ThemeStateNotifier(),

        /// A dummy child widget
        child: SizedBox(),
      );
    }
  }

  /// Override the [updateShouldNotify] to make notify changes
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    /// Always return true here to rebuild dependent widgets
    return true;
  }
}

/// End of code
