/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideAppBar extends StatelessWidget implements PreferredSizeWidget {
  const APIGuideAppBar({
    /// Super key for widget
    super.key,

    /// API Version Number
    required this.version,

    /// Date of the latest update
    required this.latestUpdate,

    /// GlobalKey from type of ScaffoldState
    required this.scaffoldKey,

    /// VoidCallback to refresh parent widget
    required this.callback,

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

    /// String for the introduction text
    required this.introText,

    /// List of FAQs
    required this.apiFaqs,
  });

  /// API Version Number
  final double version;

  /// Date of the latest update
  final DateTime latestUpdate;

  /// GlobalKey from type of ScaffoldState
  final GlobalKey<ScaffoldState> scaffoldKey;

  /// VoidCallback to refresh parent widget
  final VoidCallback callback;

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

  /// String for the introduction text
  final String introText;

  /// List of FAQs
  final List<APIGuideFAQ> apiFaqs;

  @override

  /// Implement preferredSize and adjust the height as needed;
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes state
    final themeState =
        ThemeNotifierProvider.of(context, listen: false).themeStateNotifier;

    /// Return AppBar widget
    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            /// Display the API version
            '${Constants.apiGuideTxt}$version',
            style: TextStyle(
              color: themeState.isDarkMode
                  ? ConstantsDarkMode.whiteColor
                  : ConstantsLightMode.whiteColor,
            ),
          ),
          Text(
            /// Display the latest update date
            '${Constants.latestUpdateTxt}${latestUpdate.year}-${latestUpdate.month}-${latestUpdate.day}',
            style: TextStyle(
              fontSize: Constants.size10,
              color: themeState.isDarkMode
                  ? ConstantsDarkMode.whiteColor
                  : ConstantsLightMode.whiteColor,
            ),
          ),
        ],
      ),

      /// To make the title fixed at the center
      centerTitle: true,
      backgroundColor: themeState.isDarkMode
          ? ConstantsDarkMode.indigoColor
          : ConstantsLightMode.indigoColor,

      /// Leading icon (menu) for smaller screens
      leading: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
          ? IconButton(
              icon: Icon(
                Constants.menuIcon,
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.whiteColor
                    : ConstantsLightMode.whiteColor,
              ),
              onPressed: () {
                /// Open the drawer when the leading icon is pressed
                scaffoldKey.currentState!.openDrawer();
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
          child: APIGuideSearchScreen(
            apiItemKeys: apiItemKeys,
            apiItemsList: apiItemsList,
            faqKey: faqKey,
            introKey: introKey,
            scrollController: scrollController,
            introText: introText,
            apiFaqs: apiFaqs,
          ),
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
              /// Define the ThemeNotifierProvider instance
              final themeStateContainer =
                  ThemeNotifierProvider.of(context).themeStateNotifier;

              /// Switch theme mode light/dark
              themeStateContainer.toggleIsDarkMode();

              /// Call the callback function to rebuild the parent widget
              callback();
            },
          ),
        ),
      ],
    );
  }
}

/// End of code
