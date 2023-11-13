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
    title: Text(Constants.emptyTxt),

    /// To make the title fixed at the center
    centerTitle: true,

    /// Check the current light/dark theme mode
    backgroundColor: themeState.isDarkMode
        ? ConstantsDarkMode.themeColor(context)
        : ConstantsLightMode.themeColor(context),

    ///  Leading icon (menu) for smaller screens
    leadingWidth: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
        ? Constants.size56
        : Constants.size300,

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
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Appear only on screens larger than [Constants.smallBreakPoint]
              MediaQuery.of(context).size.width <= Constants.smallBreakPoint
                  ? SizedBox()
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(Constants.size8,
                          Constants.size0, Constants.size8, Constants.size0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            /// Display the API version
                            '${Constants.apiGuideTxt} ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                              /// Check the current light/dark theme mode
                              color: themeState.isDarkMode
                                  ? ConstantsDarkMode.whiteColor
                                  : ConstantsLightMode.whiteColor,
                              fontSize: Constants.size22,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(Constants.size10),
                            ),
                            child: SizedBox(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.themeColorLight(
                                          context)
                                      : ConstantsLightMode.themeColorLight(
                                          context),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    Constants.size10,
                                    Constants.size5,
                                    Constants.size10,
                                    Constants.size5,
                                  ),
                                  child: Text(
                                    '${Constants.versionTxt}${appState.version.toStringAsFixed(1)}',
                                    style: TextStyle(
                                      /// Check the current light/dark theme mode
                                      color: themeState.isDarkMode
                                          ? ConstantsDarkMode.themeColor(
                                              context)
                                          : ConstantsLightMode.themeColor(
                                              context),
                                      fontWeight: FontWeight.normal,
                                      fontSize: Constants.size10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

              /// Appear only on screens larger than [Constants.smallBreakPoint]
              MediaQuery.of(context).size.width <= Constants.smallBreakPoint
                  ? SizedBox()
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(Constants.size8,
                          Constants.size0, Constants.size8, Constants.size0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                    ),
            ],
          ),

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
