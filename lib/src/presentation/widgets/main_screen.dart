/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [dart/ui] package files
import 'dart:ui';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [flutter/services] package files
import 'package:flutter/services.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideScreen extends StatelessWidget {
  const APIGuideScreen({
    /// Super key for widget
    super.key,

    /// Host URL implementation
    required this.urlHost,

    /// List of API items implementation
    required this.apiItems,

    /// List of FAQs implementation
    required this.apiFaqs,

    /// API version implementation
    required this.version,

    /// Date of the latest update implementation
    required this.latestUpdate,

    /// Introduction to the API Guide implementation
    required this.apiIntro,

    /// Terms Link of the API Guide implementation
    this.termsLink,

    /// Privacy Link of the API Guide implementation
    this.privacyLink,

    /// Contact Link of the API Guide implementation
    this.contactLink,

    /// Contact Email of the API Guide implementation
    this.contactEmail,

    /// Theme Color of the API Guide implementation
    this.themeColor,

    /// SPDX Licence Type of the API Guide implementation
    this.spdxLicenceType,
  });

  /// Host URL implementation
  final String urlHost;

  /// List of API items implementation
  final List<APIItem> apiItems;

  /// List of FAQs implementation
  final List<APIGuideFAQ> apiFaqs;

  /// API version implementation
  final double version;

  /// Date of the latest update implementation
  final DateTime latestUpdate;

  /// Introduction to the API Guide implementation
  final String apiIntro;

  /// Terms Link of the API Guide implementation
  final String? termsLink;

  /// Privacy Link of the API Guide implementation
  final String? privacyLink;

  /// Contact Link of the API Guide implementation
  final String? contactLink;

  /// Contact Email of the API Guide implementation
  final String? contactEmail;

  /// Theme Color of the API Guide implementation
  final APIGuideThemeColor? themeColor;

  /// SPDX Licence Type of the API Guide implementation
  final SPDXLicenceType? spdxLicenceType;

  @override
  Widget build(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes' states
    final themeState = context.read<ThemeProvider>();

    /// AppNotifierProvider to check theme attributes' states
    final appState = context.read<AppProvider>();

    /// SearchNotifierProvider to check theme attributes' states
    final searchState = context.read<SearchProvider>();

    /// Use Future.microtask to update the data
    Future.microtask(() {
      /// Update the initial value of [apiItems] list
      appState.updateAPIItemAndKeys(apiItems);

      /// Update the initial value of [apiFaqs] list
      appState.updateAPIFaqs(apiFaqs);

      /// Update the initial value of [apiIntro] String
      appState.updateIntroText(apiIntro);

      /// Update the initial value of [urlHost] String
      appState.updateURLHost(urlHost);

      /// Update the initial value of [termsLink] String
      appState.updateTermsLink(termsLink);

      /// Update the initial value of [privacyLink] String
      appState.updatePrivacyLink(privacyLink);

      /// Update the initial value of [contactLink] String
      appState.updateContactLink(contactLink);

      /// Update the initial value of [contactEmail] String
      appState.updateContactEmail(contactEmail);

      /// Update the initial value of [spdxLicenceType] SPDXLicenceType
      appState.updateSPDXLicenceType(spdxLicenceType);

      /// Update the initial value of [version] double
      appState.updateVersion(version);

      /// Update the initial value of [latestUpdate] DateTime
      appState.updateLatestUpdate(latestUpdate);

      /// Update the initial value of [themeColor] APIGuideThemeColor
      themeState.setThemeColor(themeColor ?? APIGuideThemeColor.indigo);

      /// Register a keyboard event listener
      RawKeyboard.instance.addListener(
        (event) => _handleKey(
          /// BuildContext
          context,

          /// RawKeyEvent
          event,
        ),
      );
    });

    return Scaffold(
      /// Pass GlobalKey from type ScaffoldState
      key: appState.scaffoldKey,

      /// Check the current light/dark theme mode
      backgroundColor: themeState.isDarkMode
          ? ConstantsDarkMode.whiteColor
          : ConstantsLightMode.whiteColor,

      /// Drawer widget for small screens
      drawer: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
          ? Drawer(
              child: apiGuideNavigatorDrawer(context),
            )
          : Drawer(child: SizedBox()),

      /// AppBar widget
      appBar: apiGuideAppBar(context),

      /// Body of the application
      body: Stack(
        children: [
          SizedBox(
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
                        child: apiGuideNavigator(context),
                      ),

                /// Content section
                Expanded(
                  flex: MediaQuery.of(context).size.width <=
                          Constants.largeBreakPoint
                      ? Constants.flex10
                      : Constants.flex8,
                  child: SingleChildScrollView(
                    controller: appState.scrollController1,
                    child: Padding(
                      padding: const EdgeInsets.all(Constants.size30),
                      child: Column(
                        children: [
                          SizedBox(height: Constants.size15),

                          /// Introduction section
                          Row(
                            key: appState.introKey,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Constants.arrowDoubleNavIcon,

                                /// Check the current light/dark theme mode
                                color: themeState.isDarkMode
                                    ? ConstantsDarkMode.themeColor(context)
                                    : ConstantsLightMode.themeColor(context),
                                size: Constants.size20,
                              ),
                              SelectableText(
                                Constants.introTxt,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.themeColor(context)
                                      : ConstantsLightMode.themeColor(context),
                                  fontSize: Constants.size20,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: Constants.size15),

                          Row(
                            children: [
                              Flexible(
                                child: SelectableText(
                                  appState.introText,
                                  textAlign: TextAlign.start,
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
                          apiGuideAPIItems(context),
                          SizedBox(height: Constants.size50),

                          /// FAQ section
                          Row(
                            key: appState.faqKey,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Constants.arrowDoubleNavIcon,

                                /// Check the current light/dark theme mode
                                color: themeState.isDarkMode
                                    ? ConstantsDarkMode.themeColor(context)
                                    : ConstantsLightMode.themeColor(context),
                                size: Constants.size20,
                              ),
                              Flexible(
                                child: SelectableText(
                                  Constants.faqsTxt,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,

                                    /// Check the current light/dark theme mode
                                    color: themeState.isDarkMode
                                        ? ConstantsDarkMode.themeColor(context)
                                        : ConstantsLightMode.themeColor(
                                            context),
                                    fontSize: Constants.size20,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: Constants.size15),

                          /// FAQ items
                          apiGuideFaqItems(context),
                          SizedBox(height: Constants.size15),

                          /// Copyright notice and optional parts
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              SelectableText(
                                '${Constants.rightsTxt} ${DateTime.now().year}',
                                style: TextStyle(
                                  fontSize: Constants.size10,

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.blackColor
                                      : ConstantsLightMode.blackColor,
                                ),
                              ),

                              /// Check if the [contactLink] is empty
                              appState.contactLink == null ||
                                      appState.contactLink == Constants.emptyTxt
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

                              /// Check if the [contactLink] is empty
                              appState.contactLink == null ||
                                      appState.contactLink == Constants.emptyTxt
                                  ? SizedBox()
                                  : InkWell(
                                      onTap: () => Functions()
                                          .openURL(appState.contactLink!),
                                      child: Text(
                                        Constants.contactUsTxt,
                                        style: TextStyle(
                                          fontSize: Constants.size10,

                                          /// Check the current light/dark theme mode
                                          color: themeState.isDarkMode
                                              ? ConstantsDarkMode.themeColor(
                                                  context)
                                              : ConstantsLightMode.themeColor(
                                                  context),
                                        ),
                                      ),
                                    ),

                              /// Check if the [spdxLicenceType] is empty
                              appState.spdxLicenceType == null
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

                              /// Check if the [spdxLicenceType] is empty
                              appState.spdxLicenceType == null
                                  ? SizedBox()
                                  : InkWell(
                                      onTap: () => Functions().openURL(
                                          appState.spdxLicenceType!.url),
                                      child: Text(
                                        '${appState.spdxLicenceType!.title} ${Constants.licenseTxt}',
                                        style: TextStyle(
                                          fontSize: Constants.size10,

                                          /// Check the current light/dark theme mode
                                          color: themeState.isDarkMode
                                              ? ConstantsDarkMode.themeColor(
                                                  context)
                                              : ConstantsLightMode.themeColor(
                                                  context),
                                        ),
                                      ),
                                    ),

                              /// Check if the [privacyLink] is empty
                              appState.privacyLink == null ||
                                      appState.privacyLink == Constants.emptyTxt
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

                              /// Check if the [privacyLink] is empty
                              appState.privacyLink == null ||
                                      appState.privacyLink == Constants.emptyTxt
                                  ? SizedBox()
                                  : InkWell(
                                      onTap: () => Functions()
                                          .openURL(appState.privacyLink!),
                                      child: Text(
                                        '${Constants.privacyTxt}',
                                        style: TextStyle(
                                          fontSize: Constants.size10,

                                          /// Check the current light/dark theme mode
                                          color: themeState.isDarkMode
                                              ? ConstantsDarkMode.themeColor(
                                                  context)
                                              : ConstantsLightMode.themeColor(
                                                  context),
                                        ),
                                      ),
                                    ),

                              /// Check if the [termsLink] is empty
                              appState.termsLink == null ||
                                      appState.termsLink == Constants.emptyTxt
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

                              /// Check if the [termsLink] is empty
                              appState.termsLink == null ||
                                      appState.termsLink == Constants.emptyTxt
                                  ? SizedBox()
                                  : InkWell(
                                      onTap: () => Functions()
                                          .openURL(appState.termsLink!),
                                      child: Text(
                                        '${Constants.termsTxt}',
                                        style: TextStyle(
                                          fontSize: Constants.size10,

                                          /// Check the current light/dark theme mode
                                          color: themeState.isDarkMode
                                              ? ConstantsDarkMode.themeColor(
                                                  context)
                                              : ConstantsLightMode.themeColor(
                                                  context),
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

          /// Check the visibility of the search dialog
          Visibility(
            visible: searchState.isOpenSearch,
            child: Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: Constants.size5,
                  sigmaY: Constants.size5,
                ),
                child: apiGuideSearchDialog(context),
              ),
            ),
          ),

          /// Check the visibility of the sample code type dialog
          Visibility(
            visible: appState.isOpenSampleCode,
            child: Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: Constants.size5,
                  sigmaY: Constants.size5,
                ),
                child: sampleCodeDialog(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Define [_handleKey] function
  _handleKey(
    /// BuildContext
    BuildContext context,

    /// RawKeyEvent
    RawKeyEvent keyEvent,
  ) {
    /// SearchNotifierProvider to check theme attributes' states
    final searchState = context.read<SearchProvider>();

    /// AppNotifierProvider to check theme attributes' states
    final appState = context.read<AppProvider>();

    /// Check if keyEvent is RawKeyDownEvent
    if (keyEvent is RawKeyDownEvent) {
      /// Check if the "Cmd/Ctrl + k" key is pressed
      if (keyEvent.logicalKey == LogicalKeyboardKey.keyK &&
              keyEvent.isMetaPressed ||
          keyEvent.logicalKey == LogicalKeyboardKey.keyK &&
              keyEvent.isControlPressed) {
        /// Check if the SearchDialog widget is opened
        if (searchState.isOpenSearch == false) {
          /// Toggle the [_isOpened] state
          /// Call the function when the "Cmd/Ctrl + k" key is pressed
          searchState.updateIsOpenSearch(true);
        }

        /// Check if the "Esc" key is pressed
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.escape) {
        /// Check if the search widget is open or the sample code is open
        if (searchState.isOpenSearch == true ||
            appState.isOpenSampleCode == true) {
          /// Reset the [isOpened] state for search dialog
          searchState.updateIsOpenSearch(false);

          /// Reset the [isOpened] state for sample code dialog
          appState.updateIsOpenSampleCode(false);
        }
      }
    }
  }
}

/// End of code
