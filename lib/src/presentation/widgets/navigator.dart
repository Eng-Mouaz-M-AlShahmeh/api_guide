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
Padding apiGuideNavigator(BuildContext context) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return Padding(
    padding: const EdgeInsets.fromLTRB(
      Constants.size0,
      Constants.size10,
      Constants.size0,
      Constants.size10,
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(Constants.size15),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            /// Check the current light/dark theme mode
            color: themeState.isDarkMode
                ? ConstantsDarkMode.greyLightColor
                : ConstantsLightMode.greyLightColor,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Constants.size20),
              child: Column(
                children: [
                  SizedBox(height: Constants.size15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SelectableText(
                        /// Display the API version
                        '${Constants.apiGuideTxt}${appState.version}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                          /// Check the current light/dark theme mode
                          color: themeState.isDarkMode
                              ? ConstantsDarkMode.blackColor
                              : ConstantsLightMode.blackColor,
                          fontSize: Constants.size22,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constants.size15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SelectableText(
                        /// Display the latest update date
                        '${Constants.latestUpdateTxt}${appState.latestUpdate.year}-${appState.latestUpdate.month}-${appState.latestUpdate.day}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                          /// Check the current light/dark theme mode
                          color: themeState.isDarkMode
                              ? ConstantsDarkMode.blackColor
                              : ConstantsLightMode.blackColor,
                          fontSize: Constants.size10,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constants.size50),
                  InkWell(
                    /// Introduction section link
                    onTap: () => NavigationFunctions().scrollToIntro(
                      context,
                      false,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Constants.arrowDoubleNavIcon,

                          /// Check the current light/dark theme mode
                          color: themeState.isDarkMode
                              ? ConstantsDarkMode.themeColor(context)
                              : ConstantsLightMode.themeColor(context),
                          size: Constants.size15,
                        ),
                        Text(
                          Constants.introTxt,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.themeColor(context)
                                : ConstantsLightMode.themeColor(context),
                            fontSize: Constants.size15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Constants.size15),
                  Column(
                    /// List of API items and their links
                    children: appState.apiItemList
                        .map((item) => Column(
                              children: [
                                InkWell(
                                  /// Scroll to the api item on tap
                                  onTap: () =>
                                      NavigationFunctions().scrollToAPIItem(
                                    context,
                                    item,
                                    false,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Constants.arrowDoubleNavIcon,

                                            /// Check the current light/dark theme mode
                                            color: themeState.isDarkMode
                                                ? ConstantsDarkMode.themeColor(
                                                    context)
                                                : ConstantsLightMode.themeColor(
                                                    context),
                                            size: Constants.size15,
                                          ),
                                          Text(
                                            item.title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,

                                              /// Check the current light/dark theme mode
                                              color: themeState.isDarkMode
                                                  ? ConstantsDarkMode
                                                      .themeColor(context)
                                                  : ConstantsLightMode
                                                      .themeColor(context),
                                              fontSize: Constants.size15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: Constants.size30),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(Constants.size10),
                                        ),
                                        child: SizedBox(
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Constants.getMethodColor(
                                                item.request.method.name,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                Constants.size10,
                                                Constants.size5,
                                                Constants.size10,
                                                Constants.size5,
                                              ),
                                              child: Text(
                                                item.request.method.name,
                                                style: TextStyle(
                                                  /// Check the current light/dark theme mode
                                                  color: themeState.isDarkMode
                                                      ? ConstantsDarkMode
                                                          .whiteColor
                                                      : ConstantsLightMode
                                                          .whiteColor,
                                                  fontWeight: FontWeight.bold,
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
                                SizedBox(height: Constants.size15),
                              ],
                            ))
                        .toList(),
                  ),
                  InkWell(
                    /// FAQ section link
                    onTap: () => NavigationFunctions().scrollToFaq(
                      context,
                      false,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Constants.arrowDoubleNavIcon,

                          /// Check the current light/dark theme mode
                          color: themeState.isDarkMode
                              ? ConstantsDarkMode.themeColor(context)
                              : ConstantsLightMode.themeColor(context),
                          size: Constants.size15,
                        ),
                        Text(
                          Constants.faqsShortTxt,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.themeColor(context)
                                : ConstantsLightMode.themeColor(context),
                            fontSize: Constants.size15,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

/// End of code
