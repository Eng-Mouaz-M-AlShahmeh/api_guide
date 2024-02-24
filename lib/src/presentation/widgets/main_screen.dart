import 'dart:ui';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [flutter/services] package files
import 'package:flutter/services.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [APIGuideScreen] class which extends the [StatelessWidget]
class APIGuideScreen extends ConsumerWidget {
  /// Make constructor for the [APIGuideScreen]
  const APIGuideScreen({
    /// Super key for widget
    super.key,

    /// List of API servers implementation
    required this.servers,

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

  /// List of API servers implementation
  final List<APIServer> servers;

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
  Widget build(BuildContext context, WidgetRef ref) {
    /// isDarkModeProvider to check theme attributes' states
    final isDarkMode = ref.watch(isDarkModeProvider);

    /// Use Future.microtask to update the data
    Future.microtask(() {
      /// Update the initial value of [apiItems] list
      updateAPIItemAndKeys(apiItems, ref);

      /// Update the initial value of [apiFaqs] list
      updateAPIFaqs(apiFaqs, ref);

      /// Update the initial value of [apiIntro] String
      ref.read(introTextProvider.notifier).state = apiIntro;

      /// Update the initial value of [apiServerList] list
      updateAPIServerList(servers, ref);

      /// Update the initial value of [termsLink] String
      ref.read(termsLinkProvider.notifier).state = termsLink;

      /// Update the initial value of [privacyLink] String
      ref.read(privacyLinkProvider.notifier).state = privacyLink;

      /// Update the initial value of [contactLink] String
      ref.read(contactLinkProvider.notifier).state = contactLink;

      /// Update the initial value of [contactEmail] String
      ref.read(contactEmailProvider.notifier).state = contactEmail;

      /// Update the initial value of [spdxLicenceType] SPDXLicenceType
      ref.read(spdxLicenceTypeProvider.notifier).state = spdxLicenceType;

      /// Update the initial value of [version] double
      ref.read(versionProvider.notifier).state = version;

      /// Update the initial value of [latestUpdate] DateTime
      ref.read(latestUpdateProvider.notifier).state = latestUpdate;

      /// Update the initial value of [themeColor] APIGuideThemeColor
      ref.read(themeColorProvider.notifier).state =
          themeColor ?? APIGuideThemeColor.indigo;
    });

    /// Return at the build method the full [Scaffold] with all needed items,
    /// so, you do not need to add any items of the Scaffold such as drawer,
    /// endDrawer, appBar, floatingActionButton, bottomNavigationBar,
    /// bottomSheet or persistentFooterButtons.
    /// Wrap the environment with Focus widget to handle the keyboard actions
    return Focus(
      /// Make the autofocus to true
      autofocus: true,

      /// Handle any KeyEvent and pass it to the _handleKey function
      onKeyEvent: (FocusNode? node, KeyEvent? event) {
        /// Run the _handleKey method
        _handleKey(
          /// WidgetRef
          ref,

          /// RawKeyEvent
          event!,
        );

        /// Return the default KeyEventResult and make it as ignored
        return KeyEventResult.ignored;
      },
      child: Scaffold(
        /// Pass GlobalKey from type ScaffoldState
        key: ref.watch(scaffoldKeyProvider),

        /// Check the current light/dark theme mode
        backgroundColor: isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,

        /// Drawer widget for small screens
        drawer: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
            ? Drawer(
                child: apiGuideNavigatorDrawer(ref, context),
              )
            : Drawer(child: SizedBox()),

        /// AppBar widget
        appBar: apiGuideAppBar(ref, context),

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
                          child: apiGuideNavigator(ref, context),
                        ),

                  /// Content section
                  Expanded(
                    flex: MediaQuery.of(context).size.width <=
                            Constants.largeBreakPoint
                        ? Constants.flex10
                        : Constants.flex8,
                    child: SingleChildScrollView(
                      controller: ref.watch(scrollController1Provider),
                      child: Padding(
                        padding: const EdgeInsets.all(Constants.size30),
                        child: Column(
                          children: [
                            ref.watch(introTextProvider) == Constants.emptyTxt
                                ? SizedBox()
                                : SizedBox(height: Constants.size15),

                            /// Introduction section
                            ref.watch(introTextProvider) == Constants.emptyTxt
                                ? SizedBox()
                                : SizedBox(
                                    key: ref.watch(introKeyProvider),
                                    child: titleArrowDouble(
                                        ref, Constants.introTxt),
                                  ),
                            ref.watch(introTextProvider) == Constants.emptyTxt
                                ? SizedBox()
                                : SizedBox(height: Constants.size15),

                            ref.watch(introTextProvider) == Constants.emptyTxt
                                ? SizedBox()
                                : markdownWidget(
                                    context,
                                    ref,
                                    ref.watch(introTextProvider),
                                    isDarkMode,
                                  ),
                            ref.watch(apiItemListProvider).isEmpty
                                ? SizedBox()
                                : SizedBox(height: Constants.size15),

                            /// API Items section
                            ref.watch(apiItemListProvider).isEmpty
                                ? SizedBox()
                                : apiGuideAPIItems(context, ref),
                            ref.watch(apiFaqsProvider).isEmpty
                                ? SizedBox()
                                : SizedBox(height: Constants.size50),

                            /// FAQ section
                            ref.watch(apiFaqsProvider).isEmpty
                                ? SizedBox()
                                : SizedBox(
                                    key: ref.watch(faqKeyProvider),
                                    child: titleArrowDouble(
                                        ref, Constants.faqsTxt),
                                  ),
                            ref.watch(apiFaqsProvider).isEmpty
                                ? SizedBox()
                                : SizedBox(height: Constants.size15),

                            /// FAQ items
                            ref.watch(apiFaqsProvider).isEmpty
                                ? SizedBox()
                                : apiGuideFaqItems(context),
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
                                    color: isDarkMode
                                        ? ConstantsDarkMode.blackColor
                                        : ConstantsLightMode.blackColor,
                                  ),
                                ),

                                /// Check if the [contactLink] is empty
                                ref.watch(contactLinkProvider) == null ||
                                        ref.watch(contactLinkProvider) ==
                                            Constants.emptyTxt
                                    ? SizedBox()
                                    : Text(
                                        '${Constants.dividerTxt}',
                                        style: TextStyle(
                                          fontSize: Constants.size10,

                                          /// Check the current light/dark theme mode
                                          color: isDarkMode
                                              ? ConstantsDarkMode.blackColor
                                              : ConstantsLightMode.blackColor,
                                        ),
                                      ),

                                /// Check if the [contactLink] is empty
                                ref.watch(contactLinkProvider) == null ||
                                        ref.watch(contactLinkProvider) ==
                                            Constants.emptyTxt
                                    ? SizedBox()
                                    : InkWell(
                                        /// Open the contactLink when tap
                                        onTap: () => Functions().openURL(
                                            ref.watch(contactLinkProvider)!),
                                        child: Text(
                                          Constants.contactUsTxt,
                                          style: TextStyle(
                                            fontSize: Constants.size10,

                                            /// Check the current light/dark theme mode
                                            color: isDarkMode
                                                ? ConstantsDarkMode.themeColor(
                                                    ref)
                                                : ConstantsLightMode.themeColor(
                                                    ref),
                                          ),
                                        ),
                                      ),

                                /// Check if the [spdxLicenceType] is empty
                                ref.watch(spdxLicenceTypeProvider) == null
                                    ? SizedBox()
                                    : Text(
                                        '${Constants.dividerTxt}',
                                        style: TextStyle(
                                          fontSize: Constants.size10,

                                          /// Check the current light/dark theme mode
                                          color: isDarkMode
                                              ? ConstantsDarkMode.blackColor
                                              : ConstantsLightMode.blackColor,
                                        ),
                                      ),

                                /// Check if the [spdxLicenceType] is empty
                                ref.watch(spdxLicenceTypeProvider) == null
                                    ? SizedBox()
                                    : InkWell(
                                        /// Open the spdxLicenceType url when tap
                                        onTap: () => Functions().openURL(ref
                                            .read(spdxLicenceTypeProvider)!
                                            .url),
                                        child: Text(
                                          '${ref.read(spdxLicenceTypeProvider)!.title} ${Constants.licenseTxt}',
                                          style: TextStyle(
                                            fontSize: Constants.size10,

                                            /// Check the current light/dark theme mode
                                            color: isDarkMode
                                                ? ConstantsDarkMode.themeColor(
                                                    ref)
                                                : ConstantsLightMode.themeColor(
                                                    ref),
                                          ),
                                        ),
                                      ),

                                /// Check if the [privacyLink] is empty
                                ref.watch(privacyLinkProvider) == null ||
                                        ref.watch(privacyLinkProvider) ==
                                            Constants.emptyTxt
                                    ? SizedBox()
                                    : Text(
                                        '${Constants.dividerTxt}',
                                        style: TextStyle(
                                          fontSize: Constants.size10,

                                          /// Check the current light/dark theme mode
                                          color: isDarkMode
                                              ? ConstantsDarkMode.blackColor
                                              : ConstantsLightMode.blackColor,
                                        ),
                                      ),

                                /// Check if the [privacyLink] is empty
                                ref.watch(privacyLinkProvider) == null ||
                                        ref.watch(privacyLinkProvider) ==
                                            Constants.emptyTxt
                                    ? SizedBox()
                                    : InkWell(
                                        /// Open the privacyLink when tap
                                        onTap: () => Functions().openURL(
                                            ref.watch(privacyLinkProvider)!),
                                        child: Text(
                                          '${Constants.privacyTxt}',
                                          style: TextStyle(
                                            fontSize: Constants.size10,

                                            /// Check the current light/dark theme mode
                                            color: isDarkMode
                                                ? ConstantsDarkMode.themeColor(
                                                    ref)
                                                : ConstantsLightMode.themeColor(
                                                    ref),
                                          ),
                                        ),
                                      ),

                                /// Check if the [termsLink] is empty
                                ref.watch(termsLinkProvider) == null ||
                                        ref.watch(termsLinkProvider) ==
                                            Constants.emptyTxt
                                    ? SizedBox()
                                    : Text(
                                        '${Constants.dividerTxt}',
                                        style: TextStyle(
                                          fontSize: Constants.size10,

                                          /// Check the current light/dark theme mode
                                          color: isDarkMode
                                              ? ConstantsDarkMode.blackColor
                                              : ConstantsLightMode.blackColor,
                                        ),
                                      ),

                                /// Check if the [termsLink] is empty
                                ref.watch(termsLinkProvider) == null ||
                                        ref.watch(termsLinkProvider) ==
                                            Constants.emptyTxt
                                    ? SizedBox()
                                    : InkWell(
                                        /// Open the termsLink when tap
                                        onTap: () => Functions().openURL(
                                            ref.watch(termsLinkProvider)!),
                                        child: Text(
                                          '${Constants.termsTxt}',
                                          style: TextStyle(
                                            fontSize: Constants.size10,

                                            /// Check the current light/dark theme mode
                                            color: isDarkMode
                                                ? ConstantsDarkMode.themeColor(
                                                    ref)
                                                : ConstantsLightMode.themeColor(
                                                    ref),
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
              visible: ref.watch(isOpenSearchProvider),
              child: Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: Constants.size5,
                    sigmaY: Constants.size5,
                  ),
                  child: apiGuideSearchDialog(ref, context),
                ),
              ),
            ),

            /// Check the visibility of the sample code type dialog
            Visibility(
              visible: ref.watch(isOpenSampleCodeProvider),
              child: Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: Constants.size5,
                    sigmaY: Constants.size5,
                  ),
                  child: sampleCodeDialog(context, ref),
                ),
              ),
            ),

            /// Check the visibility of the server dialog
            Visibility(
              visible: ref.watch(isOpenServerProvider),
              child: Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: Constants.size5,
                    sigmaY: Constants.size5,
                  ),
                  child: serverDialog(context, ref),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Define [_handleKey] function
  _handleKey(
    /// WidgetRef
    WidgetRef ref,

    /// RawKeyEvent
    KeyEvent keyEvent,
  ) {
    /// Check if keyEvent is RawKeyDownEvent
    if (keyEvent is KeyDownEvent) {
      /// Check if the "Cmd/Ctrl + k" key is pressed
      if (keyEvent.logicalKey == LogicalKeyboardKey.keyK &&
              HardwareKeyboard.instance.isMetaPressed ||
          keyEvent.logicalKey == LogicalKeyboardKey.keyK &&
              HardwareKeyboard.instance.isControlPressed) {
        /// Check if the SearchDialog widget is opened
        if (ref.watch(isOpenSearchProvider) == false) {
          /// Toggle the [_isOpened] state
          /// Call the function when the "Cmd/Ctrl + k" key is pressed
          ref.read(isOpenSearchProvider.notifier).state = true;
        }

        /// Check if the "Esc" key is pressed
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.escape) {
        /// Check if the search widget is open or the sample code is open
        if (ref.watch(isOpenSearchProvider) == true ||
            ref.watch(isOpenSampleCodeProvider) == true ||
            ref.watch(isOpenServerProvider) == true) {
          /// Reset the [isOpened] state for search dialog
          ref.read(isOpenSearchProvider.notifier).state = false;

          /// Reset the [isOpened] state for sample code dialog
          ref.read(isOpenSampleCodeProvider.notifier).state = false;

          /// Reset the [isOpened] state for server dialog
          ref.read(isOpenServerProvider.notifier).state = false;
        }
      }
    }
  }
}
