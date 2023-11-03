/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
/// Define [SearchStateNotifier] class for adding isDarkMode state changes
class SearchStateNotifier extends ChangeNotifier {
  /// Define Initial Attributes
  /// Define [_searchKey] attribute with default value of ''
  String _searchKey = '';

  /// Define [_isOpen] attribute with default value of false
  bool _isOpen = false;

  /// Define initial [_searchItems] List to be assigned later
  List<String> _searchItems = [];

  /// Define Getters
  /// Define String getter of [_searchKey] called [searchKey]
  String get searchKey => _searchKey;

  /// Define bool getter of [_isOpen] called [isOpen]
  bool get isOpen => _isOpen;

  /// Define List<String> getter of [_searchItems] called [searchItems]
  List<String> get searchItems => _searchItems;

  /// Define Functions
  /// Define [updateSearchKey] function which update
  /// the [_searchKey] values
  updateSearchKey(String val) {
    /// Update the value of [_searchKey]
    _searchKey = val;

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }

  /// Define [toggleIsOpen] function which toggle
  /// the state of [_isOpen] value
  toggleIsOpen(bool val) {
    /// Negate the value of [_isDarkMode]
    _isOpen = val;

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateSearchItems] function which update
  /// the list of [_searchItems] values
  updateSearchItems(List<String> val) {
    /// Update the value of [_searchItems]
    _searchItems = val;

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }
}

/// Define [SearchNotifierProvider] which extends the InheritedWidget
class SearchNotifierProvider extends InheritedWidget {
  /// Define [searchStateNotifier] from type of [SearchStateNotifier]
  final SearchStateNotifier searchStateNotifier;

  /// Define [SearchNotifierProvider] constructor
  SearchNotifierProvider({
    /// Add required [searchStateNotifier] parameter
    required this.searchStateNotifier,

    /// Add required [child] parameter from type of Widget
    required Widget child,

    /// Construct super state
  }) : super(child: child);

  /// Make functionality of [of(BuildContext context)] of the InheritedWidget
  static SearchNotifierProvider of(BuildContext context, {bool listen = true}) {
    /// Check if listen equal true
    if (listen) {
      /// return the [dependOnInheritedWidgetOfExactType] of [SearchNotifierProvider]
      return context
          .dependOnInheritedWidgetOfExactType<SearchNotifierProvider>()!;

      /// else return empty SizedBox()
    } else {
      /// If listen is set to false, return a dummy InheritedWidget that doesn't rebuild its dependents
      return SearchNotifierProvider(
        /// Create a new instance without rebuilding
        searchStateNotifier: SearchStateNotifier(),

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
