/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideNavigator extends StatelessWidget {
  const APIGuideNavigator({
    /// Constructor with parameters
    super.key,

    /// Required API version
    required this.version,

    /// Date of the latest update
    required this.latestUpdate,

    /// List of API items
    required this.apiItemsList,

    /// Key for the introduction section
    required this.introKey,

    /// Key for the FAQ section
    required this.faqKey,

    /// List of keys for API items
    required this.apiItemKeys,

    /// Scroll controller for navigation
    required this.scrollController,
  });

  /// API version number
  final double version;

  /// Date of the latest update
  final DateTime latestUpdate;

  /// List of API items
  final List<APIItem> apiItemsList;

  /// Key for the introduction section
  final GlobalKey introKey;

  /// Key for the FAQ section
  final GlobalKey faqKey;

  /// List of keys for API items
  final List<GlobalKey> apiItemKeys;

  /// Scroll controller
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes state
    final themeState = ThemeNotifierProvider.of(context).themeStateNotifier;

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
                        Text(
                          /// Display the API version
                          '${Constants.apiGuideTxt}$version',
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
                        Text(
                          /// Display the latest update date
                          '${Constants.latestUpdateTxt}${latestUpdate.year}-${latestUpdate.month}-${latestUpdate.day}',
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
                        introKey,
                        scrollController,
                        false,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Constants.arrowDoubleNavIcon,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.indigoColor
                                : ConstantsLightMode.indigoColor,
                            size: Constants.size15,
                          ),
                          Text(
                            Constants.introTxt,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                              /// Check the current light/dark theme mode
                              color: themeState.isDarkMode
                                  ? ConstantsDarkMode.indigoColor
                                  : ConstantsLightMode.indigoColor,
                              fontSize: Constants.size15,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: Constants.size15),
                    Column(
                      /// List of API items and their links
                      children: apiItemsList
                          .map((item) => Column(
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        NavigationFunctions().scrollToAPIItem(
                                      context,
                                      scrollController,
                                      apiItemKeys.firstWhere(
                                        (element) => element
                                            .toString()
                                            .contains(item.title),
                                      ),
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
                                                  ? ConstantsDarkMode
                                                      .indigoColor
                                                  : ConstantsLightMode
                                                      .indigoColor,
                                              size: Constants.size15,
                                            ),
                                            Text(
                                              item.title,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                /// Check the current light/dark theme mode
                                                color: themeState.isDarkMode
                                                    ? ConstantsDarkMode
                                                        .indigoColor
                                                    : ConstantsLightMode
                                                        .indigoColor,
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
                        faqKey,
                        scrollController,
                        false,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Constants.arrowDoubleNavIcon,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.indigoColor
                                : ConstantsLightMode.indigoColor,
                            size: Constants.size15,
                          ),
                          Text(
                            Constants.faqsShortTxt,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                              /// Check the current light/dark theme mode
                              color: themeState.isDarkMode
                                  ? ConstantsDarkMode.indigoColor
                                  : ConstantsLightMode.indigoColor,
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
}

/// End of code
