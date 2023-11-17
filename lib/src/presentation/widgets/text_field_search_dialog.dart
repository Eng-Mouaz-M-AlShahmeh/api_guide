/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
/// Define [apiGuideTextFieldSearchDialog] function
TextField apiGuideTextFieldSearchDialog(
  /// BuildContext
  BuildContext context,

  /// TextEditingController
  TextEditingController searchController,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// SearchNotifierProvider to check theme attributes' states
  final searchState = context.read<SearchProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  /// Define [_patternIntro] Regular Expression
  RegExp _patternIntro = RegExp(
    /// The source String
    Constants.introPattern,

    /// bool value of caseSensitive
    caseSensitive: false,
  );

  /// Define [_patternFAQs] Regular Expression
  RegExp _patternFAQs = RegExp(
    /// The source String
    Constants.faqsPattern,

    /// bool value of caseSensitive
    caseSensitive: false,
  );

  return TextField(
    /// Make the [TextField] as an autofocus
    /// to true to directly write the search query
    autofocus: true,
    style: TextStyle(
      fontSize: Constants.size15,

      /// Check the current light/dark theme mode
      color: themeState.isDarkMode
          ? ConstantsDarkMode.blackColor
          : ConstantsLightMode.blackColor,
    ),
    controller: searchController,
    onChanged: (val) {
      /// Empty the local demo list
      searchState.updateSearchItems([]);

      /// Update the search key value
      searchState.updateSearchKey(val);

      /// Update the search controller value
      searchController.text = val;

      /// Check if [_patternIntro] match the search key
      if (_patternIntro.hasMatch(val)) {
        /// Add introItemListTxt to
        /// the demo list to compare later
        searchState.addToSearchItems(Constants.introItemListTxt);
      }

      /// Check if [_patternFAQs] match the search key
      if (_patternFAQs.hasMatch(val)) {
        /// Add faqsItemListTxt to
        /// the demo list to compare later
        searchState.addToSearchItems(Constants.faqsItemListTxt);
      }

      /// Make loop over apiItemsList
      appState.apiItemList.forEach((element) {
        /// Check if the element url path or element title
        /// match the search key with lower case
        /// to both to make insensitive case
        if (element.urlPath.toLowerCase().contains(val.toLowerCase()) ||
            element.title.toLowerCase().contains(val.toLowerCase())) {
          /// Add element urlPath to
          /// the demo list to compare later
          searchState.addToSearchItems(element.urlPath.toLowerCase());
        }
      });
    },
    decoration: InputDecoration(
      /// Check the current light/dark theme mode
      suffixIconColor: themeState.isDarkMode
          ? ConstantsDarkMode.themeColor(context)
          : ConstantsLightMode.themeColor(context),
      suffixIcon: searchState.searchKey == Constants.emptyTxt
          ? SizedBox()
          : InkWell(
              onTap: () {
                /// Update the search key by
                /// empty text value when pressed
                /// the clear icon
                searchState.updateSearchKey(Constants.emptyTxt);

                /// Update the search controller by
                /// empty text value when pressed
                /// the clear icon
                searchController.text = Constants.emptyTxt;
              },
              child: Icon(Constants.clearIcon),
            ),
      hintText: Constants.searchHintTxt,
      hintStyle: TextStyle(
        fontSize: Constants.size15,

        /// Check the current light/dark theme mode
        color: themeState.isDarkMode
            ? ConstantsDarkMode.blackColor
            : ConstantsLightMode.blackColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Constants.size10),
        borderSide: BorderSide(
          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
          width: Constants.size1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Constants.size10),
        borderSide: BorderSide(
          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
          width: Constants.size1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Constants.size10),
        borderSide: BorderSide(
          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.themeColor(context)!
              : ConstantsLightMode.themeColor(context)!,
          width: Constants.size2,
        ),
      ),
    ),
  );
}

/// End of code
