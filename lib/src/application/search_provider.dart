/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package
/// Import necessary packages
import 'package:flutter/foundation.dart';

/// Import [APIGuide] package files
import '../../api_guide.dart';

/// Define [SearchProvider] class which extends the [ChangeNotifier]
class SearchProvider extends ChangeNotifier {
  /// Define Initial Attributes
  /// Define [_searchKey] attribute with default value of ''
  String _searchKey = '';

  /// Define [_isOpenSearch] attribute with default value of false
  bool _isOpenSearch = false;

  /// Define bool [_isHoveredIntro] and assign initial value to false
  bool _isHoveredIntro = false;

  /// Define bool [_isHoveredFaqs] and assign initial value to false
  bool _isHoveredFaqs = false;

  /// Define initial [_searchItems] List to be assigned later
  List<String> _searchItems = [];

  /// Define Getters
  /// Define String getter of [_searchKey] called [searchKey]
  String get searchKey => _searchKey;

  /// Define bool getter of [_isOpenSearch] called [isOpenSearch]
  bool get isOpenSearch => _isOpenSearch;

  /// Define bool getter of [_isHoveredIntro] called [isHoveredIntro]
  bool get isHoveredIntro => _isHoveredIntro;

  /// Define bool getter of [_isHoveredFaqs] called [isHoveredFaqs]
  bool get isHoveredFaqs => _isHoveredFaqs;

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

  /// Define [updateIsOpenSearch] function which toggle
  /// the state of [_isOpenSearch] value
  updateIsOpenSearch(bool val) {
    /// Update the value of [_isOpenSearch]
    _isOpenSearch = val;

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateIsHoveredIntro] function which toggle
  /// the state of [_isHoveredIntro] value
  updateIsHoveredIntro(bool val) {
    /// Update the value of [_isHoveredIntro]
    _isHoveredIntro = val;

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateIsHoveredFaqs] function which toggle
  /// the state of [_isHoveredFaqs] value
  updateIsHoveredFaqs(bool val) {
    /// Negate the value of [_isDarkMode]
    _isHoveredFaqs = val;

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

  /// Define [addToSearchItems] function which update
  /// the list of [_searchItems] values
  addToSearchItems(String val) {
    /// Add the value to the [_searchItems]
    _searchItems.add(val);

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }

  /// Define [SearchProvider] constructor
  SearchProvider();
}
