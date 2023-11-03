/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [dart:ui]
import 'dart:ui';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideSearchScreen extends StatefulWidget {
  /// Construct the [APIGuideSearchScreen] class
  const APIGuideSearchScreen({
    /// Construct super key
    super.key,

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
  _APIGuideSearchScreenState createState() => _APIGuideSearchScreenState();
}

class _APIGuideSearchScreenState extends State<APIGuideSearchScreen> {
  /// Define initial [themeState] attribute to be assigned later
  late ThemeStateNotifier themeState;

  /// Define initial [searchState] attribute to be assigned later
  late SearchStateNotifier searchState;

  /// Define a function to show the search dialog
  _showSearchDialog(
    ThemeStateNotifier themeState,
    GlobalKey introKey,
    GlobalKey faqKey,
    List<APIItem> apiItemsList,
    List<GlobalKey> apiItemKeys,
    ScrollController scrollController,
    String introText,
    List<APIGuideFAQ> apiFaqs,
  ) {
    /// ThemeNotifierProvider to check theme attributes state
    final searchState = SearchNotifierProvider.of(context).searchStateNotifier;

    /// Toggle the [_isOpened] state
    searchState.toggleIsOpen(true);

    /// Show the search dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: Constants.size5,
            sigmaY: Constants.size5,
          ),
          child: APIGuideSearchDialog(
            themeState: themeState,
            apiItemKeys: apiItemKeys,
            apiItemsList: apiItemsList,
            faqKey: faqKey,
            introKey: introKey,
            scrollController: scrollController,
            introText: introText,
            apiFaqs: apiFaqs,
          ),
        );
      },
    ).then((val) {
      /// Toggle the [_isOpened] state
      searchState.toggleIsOpen(false);
    });
  }

  @override
  initState() {
    super.initState();

    /// ThemeNotifierProvider to check theme attributes' states
    themeState =
        ThemeNotifierProvider.of(context, listen: false).themeStateNotifier;

    /// SearchNotifierProvider to check theme attributes' states
    searchState =
        SearchNotifierProvider.of(context, listen: false).searchStateNotifier;
  }

  @override
  didChangeDependencies() {
    super.didChangeDependencies();

    /// The widget updates we want to perform after changing dependencies
    setState(() {
      /// Update the [themeState] value
      themeState = ThemeNotifierProvider.of(context).themeStateNotifier;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
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
                    ? ConstantsDarkMode.indigoColor
                    : ConstantsLightMode.indigoColor,
              ),
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontSize: Constants.size10,

                  /// Check the current light/dark theme mode
                  color: themeState.isDarkMode
                      ? ConstantsDarkMode.indigoColor
                      : ConstantsLightMode.indigoColor,
                ),
              ),
            ),
            onPressed: () {
              /// Open the search dialog
              _showSearchDialog(
                themeState,
                widget.introKey,
                widget.faqKey,
                widget.apiItemsList,
                widget.apiItemKeys,
                widget.scrollController,
                widget.introText,
                widget.apiFaqs,
              );
            },
            child: APIGuideSearchBtn(themeState: themeState),
          ),
        ],
      ),
    );
  }
}

/// End of code
