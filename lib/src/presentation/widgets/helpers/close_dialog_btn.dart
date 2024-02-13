import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Close Search Dialog Button from type of [ElevatedButton]
ElevatedButton closeSearchDialogButton(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// SearchNotifierProvider to check theme attributes' states
  final searchState = context.read<SearchProvider>();

  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        /// Check the current light/dark theme mode
        themeState.isDarkMode
            ? ConstantsDarkMode.themeColor(context)
            : ConstantsLightMode.themeColor(context),
      ),
      foregroundColor: MaterialStateProperty.all(
        /// Check the current light/dark theme mode
        themeState.isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: Constants.size10,

          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.greyLightColor
              : ConstantsLightMode.greyLightColor,
        ),
      ),
    ),
    onPressed: () {
      /// Toggle the [_isOpened] state
      searchState.updateIsOpenSearch(false);
    },
    child: Text(Constants.closeTxt),
  );
}

/// Close Sample Code Dialog Button from type of [ElevatedButton]
ElevatedButton closeSampleCodeDialogButton(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        /// Check the current light/dark theme mode
        themeState.isDarkMode
            ? ConstantsDarkMode.themeColor(context)
            : ConstantsLightMode.themeColor(context),
      ),
      foregroundColor: MaterialStateProperty.all(
        /// Check the current light/dark theme mode
        themeState.isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: Constants.size10,

          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.greyLightColor
              : ConstantsLightMode.greyLightColor,
        ),
      ),
    ),
    onPressed: () {
      /// Toggle the [_isOpened] state
      appState.updateIsOpenSampleCode(false);
    },
    child: Text(Constants.closeTxt),
  );
}

/// Close Server Dialog Button from type of [ElevatedButton]
ElevatedButton closeServerDialogButton(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        /// Check the current light/dark theme mode
        themeState.isDarkMode
            ? ConstantsDarkMode.themeColor(context)
            : ConstantsLightMode.themeColor(context),
      ),
      foregroundColor: MaterialStateProperty.all(
        /// Check the current light/dark theme mode
        themeState.isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: Constants.size10,

          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.greyLightColor
              : ConstantsLightMode.greyLightColor,
        ),
      ),
    ),
    onPressed: () {
      /// Toggle the [_isOpened] state
      appState.updateIsOpenServer(false);
    },
    child: Text(Constants.closeTxt),
  );
}
