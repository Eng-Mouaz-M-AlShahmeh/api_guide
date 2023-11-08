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
Padding apiGuideSearchScreen(BuildContext context) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// SearchNotifierProvider to check theme attributes' states
  final searchState = context.read<SearchProvider>();

  return Padding(
    padding: const EdgeInsets.all(Constants.size10),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          /// Check the current light/dark theme mode
          themeState.isDarkMode
              ? ConstantsDarkMode.greyLightColor
              : ConstantsLightMode.greyLightColor,
        ),
        foregroundColor: MaterialStateProperty.all(
          /// Check the current light/dark theme mode
          themeState.isDarkMode
              ? ConstantsDarkMode.themeColor(context)
              : ConstantsLightMode.themeColor(context),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: Constants.size10,

            /// Check the current light/dark theme mode
            color: themeState.isDarkMode
                ? ConstantsDarkMode.themeColor(context)
                : ConstantsLightMode.themeColor(context),
          ),
        ),
      ),
      onPressed: () {
        /// Open the search dialog
        /// Toggle the [isOpened] state
        searchState.updateIsOpenSearch(true);

        /// Reset the search key
        searchState.updateSearchKey('');
      },
      child: apiGuideSearchBtn(context),
    ),
  );
}

/// End of code
