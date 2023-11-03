/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
/// Import [dart:ui]
import 'dart:ui';

import 'package:flutter/material.dart';

/// Import [flutter/services] package files
import 'package:flutter/services.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideScreen extends StatefulWidget {
  const APIGuideScreen({
    /// Super key for widget
    super.key,

    /// Build context
    required this.context,

    /// Host URL
    required this.urlHost,

    /// List of API items
    required this.apiItems,

    /// List of FAQs
    required this.apiFaqs,

    /// API version
    required this.version,

    /// Date of the latest update
    required this.latestUpdate,

    /// Introduction to the API Guide
    required this.apiIntro,

    /// Terms Link of the API Guide
    this.termsLink,

    /// Privacy Link of the API Guide
    this.privacyLink,
  });

  /// Build context
  final BuildContext context;

  /// Host URL
  final String urlHost;

  /// List of API items
  final List<APIItem> apiItems;

  /// List of FAQs
  final List<APIGuideFAQ> apiFaqs;

  /// API version
  final double version;

  /// Date of the latest update
  final DateTime latestUpdate;

  /// Introduction to the API Guide
  final String apiIntro;

  /// Terms Link of the API Guide
  final String? termsLink;

  /// Privacy Link of the API Guide
  final String? privacyLink;

  @override
  State<APIGuideScreen> createState() => _APIGuideScreenState();
}

class _APIGuideScreenState extends State<APIGuideScreen> {
  /// Scroll controller for the first section
  final ScrollController _scrollController1 = ScrollController();

  /// Scroll controller for the second section
  final ScrollController _scrollController2 = ScrollController();

  /// GlobalKey for the introduction section
  final GlobalKey _introKey = GlobalKey();

  /// GlobalKey for the FAQ section
  final GlobalKey _faqKey = GlobalKey();

  /// GlobalKey for the scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  /// List of global keys for API items
  List<GlobalKey> _apiItemKeys = [];

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

  /// Define [_handleKey] function
  _handleKey(
    BuildContext context,
    RawKeyEvent keyEvent,
    ThemeStateNotifier themeState,
    SearchStateNotifier searchState,
    GlobalKey introKey,
    GlobalKey faqKey,
    List<APIItem> apiItemsList,
    List<GlobalKey> apiItemKeys,
    ScrollController scrollController,
  ) {
    /// Check if keyEvent is RawKeyDownEvent
    if (keyEvent is RawKeyDownEvent) {
      /// Check if the "Cmd/Ctrl + k" key is pressed
      if (keyEvent.logicalKey == LogicalKeyboardKey.keyK &&
          keyEvent.isMetaPressed) {
        /// Check if the SearchDialog widget is opened
        if (searchState.isOpen == false) {
          /// Toggle the [_isOpened] state
          searchState.toggleIsOpen(true);

          /// Call the function when the "Cmd/Ctrl + k" key is pressed
          _showSearchDialog(
            themeState,
            _introKey,
            _faqKey,
            widget.apiItems,
            _apiItemKeys,
            _scrollController1,
            widget.apiIntro,
            widget.apiFaqs,
          );
        }

        /// Check if the "Esc" key is pressed
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.escape) {
        /// Check if the search widget is open
        if (searchState.isOpen == true) {
          /// Toggle the [_isOpened] state
          searchState.toggleIsOpen(false);

          /// Call the function to close the dialog
          Navigator.of(context).pop();
        }
      }
    }
  }

  @override
  initState() {
    /// Initialize global keys for API items
    setState(() {
      _apiItemKeys =
          widget.apiItems.map((e) => GlobalKey(debugLabel: e.title)).toList();
    });

    /// ThemeNotifierProvider to check theme attributes' states
    themeState =
        ThemeNotifierProvider.of(context, listen: false).themeStateNotifier;

    /// SearchNotifierProvider to check theme attributes' states
    searchState =
        SearchNotifierProvider.of(context, listen: false).searchStateNotifier;

    /// Register a keyboard event listener
    RawKeyboard.instance.addListener(
      (event) => _handleKey(
        context,
        event,
        themeState,
        searchState,
        _introKey,
        _faqKey,
        widget.apiItems,
        _apiItemKeys,
        _scrollController1,
      ),
    );

    super.initState();
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
  dispose() {
    /// ThemeNotifierProvider to check theme attributes state
    themeState = ThemeNotifierProvider.of(context).themeStateNotifier;

    /// Remove the listener when the widget is disposed
    RawKeyboard.instance.removeListener(
      (event) => _handleKey(
        context,
        event,
        themeState,
        searchState,
        _introKey,
        _faqKey,
        widget.apiItems,
        _apiItemKeys,
        _scrollController1,
      ),
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes state
    final themeState = ThemeNotifierProvider.of(context).themeStateNotifier;

    /// Define rebuildParent function to call from AppBar child widget
    rebuildParent() {
      /// Make setState to rebuild
      setState(() {});
    }

    /// Handle [WillPopScope] event
    return WillPopScope(
      /// Avoid return back from main API Guide widget
      onWillPop: () {
        return Future.delayed(Duration.zero, () {
          return false;
        });
      },
      child: Scaffold(
        key: _scaffoldKey,

        /// Check the current light/dark theme mode
        backgroundColor: themeState.isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,

        /// Drawer widget for small screens
        drawer: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
            ? Drawer(
                child: APIGuideNavigatorDrawer(
                  version: widget.version,
                  latestUpdate: widget.latestUpdate,
                  apiItemsList: widget.apiItems,
                  introKey: _introKey,
                  faqKey: _faqKey,
                  apiItemKeys: _apiItemKeys,
                  scrollController: _scrollController1,
                  scaffoldKey: _scaffoldKey,
                ),
              )
            : Drawer(child: SizedBox()),

        /// AppBar widget
        appBar: APIGuideAppBar(
          version: widget.version,
          latestUpdate: widget.latestUpdate,
          scaffoldKey: _scaffoldKey,
          callback: rebuildParent,
          apiItemKeys: _apiItemKeys,
          apiItemsList: widget.apiItems,
          faqKey: _faqKey,
          introKey: _introKey,
          scrollController: _scrollController1,
          introText: widget.apiIntro,
          apiFaqs: widget.apiFaqs,
        ),

        /// Body of the application
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Navigator for large screens
              MediaQuery.of(context).size.width <= Constants.largeBreakPoint
                  ? SizedBox()
                  : Expanded(
                      flex: Constants.flex2,
                      child: APIGuideNavigator(
                        version: widget.version,
                        latestUpdate: widget.latestUpdate,
                        apiItemsList: widget.apiItems,
                        introKey: _introKey,
                        faqKey: _faqKey,
                        scrollController: _scrollController1,
                        apiItemKeys: _apiItemKeys,
                      ),
                    ),

              /// Content section
              Expanded(
                flex: MediaQuery.of(context).size.width <=
                        Constants.largeBreakPoint
                    ? Constants.flex10
                    : Constants.flex8,
                child: SingleChildScrollView(
                  controller: _scrollController1,
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.size30),
                    child: Column(
                      children: [
                        SizedBox(height: Constants.size15),

                        /// Introduction section
                        Row(
                          key: _introKey,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Constants.arrowDoubleNavIcon,

                              /// Check the current light/dark theme mode
                              color: themeState.isDarkMode
                                  ? ConstantsDarkMode.indigoColor
                                  : ConstantsLightMode.indigoColor,
                              size: Constants.size20,
                            ),
                            Text(
                              Constants.introTxt,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                                /// Check the current light/dark theme mode
                                color: themeState.isDarkMode
                                    ? ConstantsDarkMode.indigoColor
                                    : ConstantsLightMode.indigoColor,
                                fontSize: Constants.size20,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: Constants.size15),

                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                widget.apiIntro,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: Constants.size15,

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.blackColor
                                      : ConstantsLightMode.blackColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Constants.size15),

                        /// API Items section
                        APIGuideAPIItems(
                          apiItemsList: widget.apiItems,
                          apiItemKeys: _apiItemKeys,
                          scrollController: _scrollController2,
                          urlHost: widget.urlHost,
                        ),
                        SizedBox(height: Constants.size50),

                        /// FAQ section
                        Row(
                          key: _faqKey,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Constants.arrowDoubleNavIcon,

                              /// Check the current light/dark theme mode
                              color: themeState.isDarkMode
                                  ? ConstantsDarkMode.indigoColor
                                  : ConstantsLightMode.indigoColor,
                              size: Constants.size20,
                            ),
                            Flexible(
                              child: Text(
                                Constants.faqsTxt,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.indigoColor
                                      : ConstantsLightMode.indigoColor,
                                  fontSize: Constants.size20,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: Constants.size15),

                        /// FAQ items
                        APIGuideFaqItems(apiFaqsList: widget.apiFaqs),
                        SizedBox(height: Constants.size15),

                        /// Copyright notice and optional Privacy and Terms
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${Constants.rightsTxt} ${DateTime.now().year}',
                              style: TextStyle(
                                fontSize: Constants.size10,

                                /// Check the current light/dark theme mode
                                color: themeState.isDarkMode
                                    ? ConstantsDarkMode.blackColor
                                    : ConstantsLightMode.blackColor,
                              ),
                            ),
                            widget.privacyLink == null ||
                                    widget.privacyLink == ''
                                ? SizedBox()
                                : Text(
                                    '${Constants.dividerTxt}',
                                    style: TextStyle(
                                      fontSize: Constants.size10,

                                      /// Check the current light/dark theme mode
                                      color: themeState.isDarkMode
                                          ? ConstantsDarkMode.blackColor
                                          : ConstantsLightMode.blackColor,
                                    ),
                                  ),
                            widget.privacyLink == null ||
                                    widget.privacyLink == ''
                                ? SizedBox()
                                : InkWell(
                                    onTap: () => Functions()
                                        .openURL(widget.privacyLink!),
                                    child: Text(
                                      '${Constants.privacyTxt}',
                                      style: TextStyle(
                                        fontSize: Constants.size10,

                                        /// Check the current light/dark theme mode
                                        color: themeState.isDarkMode
                                            ? ConstantsDarkMode.indigoColor
                                            : ConstantsLightMode.indigoColor,
                                      ),
                                    ),
                                  ),
                            widget.termsLink == null || widget.termsLink == ''
                                ? SizedBox()
                                : Text(
                                    '${Constants.dividerTxt}',
                                    style: TextStyle(
                                      fontSize: Constants.size10,

                                      /// Check the current light/dark theme mode
                                      color: themeState.isDarkMode
                                          ? ConstantsDarkMode.blackColor
                                          : ConstantsLightMode.blackColor,
                                    ),
                                  ),
                            widget.termsLink == null || widget.termsLink == ''
                                ? SizedBox()
                                : InkWell(
                                    onTap: () =>
                                        Functions().openURL(widget.termsLink!),
                                    child: Text(
                                      '${Constants.termsTxt}',
                                      style: TextStyle(
                                        fontSize: Constants.size10,

                                        /// Check the current light/dark theme mode
                                        color: themeState.isDarkMode
                                            ? ConstantsDarkMode.indigoColor
                                            : ConstantsLightMode.indigoColor,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                        SizedBox(height: Constants.size15),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// End of code
