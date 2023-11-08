/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
AppBar apiGuideAppBar(BuildContext context) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  /// Return AppBar widget
  return AppBar(
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SelectableText(
          /// Display the API version
          '${Constants.apiGuideTxt}${appState.version}',
          style: TextStyle(
            /// Check the current light/dark theme mode
            color: themeState.isDarkMode
                ? ConstantsDarkMode.whiteColor
                : ConstantsLightMode.whiteColor,
          ),
        ),
        SelectableText(
          /// Display the latest update date
          '${Constants.latestUpdateTxt}${appState.latestUpdate.year}-${appState.latestUpdate.month}-${appState.latestUpdate.day}',
          style: TextStyle(
            fontSize: Constants.size10,

            /// Check the current light/dark theme mode
            color: themeState.isDarkMode
                ? ConstantsDarkMode.whiteColor
                : ConstantsLightMode.whiteColor,
          ),
        ),
      ],
    ),

    /// To make the title fixed at the center
    centerTitle: true,

    /// Check the current light/dark theme mode
    backgroundColor: themeState.isDarkMode
        ? ConstantsDarkMode.themeColor(context)
        : ConstantsLightMode.themeColor(context),

    /// Leading icon (menu) for smaller screens
    leading: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
        ? IconButton(
            icon: Icon(
              Constants.menuIcon,

              /// Check the current light/dark theme mode
              color: themeState.isDarkMode
                  ? ConstantsDarkMode.whiteColor
                  : ConstantsLightMode.whiteColor,
            ),
            onPressed: () {
              /// Open the drawer when the leading icon is pressed
              appState.scaffoldKey.currentState!.openDrawer();
            },
          )
        : SizedBox(),

    /// Actions icon (light ot dark) for theme mode switch
    actions: [
      Padding(
        padding: const EdgeInsets.fromLTRB(
          Constants.size15,
          Constants.size0,
          Constants.size15,
          Constants.size0,
        ),
        child: apiGuideSearchScreen(context),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(
          Constants.size15,
          Constants.size0,
          Constants.size15,
          Constants.size0,
        ),
        child: IconButton(
          icon: Icon(
            /// Check the current light/dark theme mode
            themeState.isDarkMode ? Constants.lightIcon : Constants.darkIcon,

            /// Check the current light/dark theme mode
            color: themeState.isDarkMode
                ? ConstantsDarkMode.whiteColor
                : ConstantsLightMode.whiteColor,
          ),
          onPressed: () {
            /// ThemeNotifierProvider to check theme attributes' states
            final themeState = context.read<ThemeProvider>();

            /// Switch theme mode light/dark
            themeState.toggleIsDarkMode();
          },
        ),
      ),
    ],
  );
}

/// End of code
