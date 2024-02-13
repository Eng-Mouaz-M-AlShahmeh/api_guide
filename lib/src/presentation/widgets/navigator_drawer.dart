import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [apiGuideNavigatorDrawer] function
SizedBox apiGuideNavigatorDrawer(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return SizedBox(
    height: MediaQuery.of(context).size.height,
    child: DecoratedBox(
      decoration: BoxDecoration(
        /// Check the current light/dark theme mode
        color: themeState.isDarkMode
            ? ConstantsDarkMode.greyLightColor
            : ConstantsLightMode.greyLightColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(Constants.size20),
        child: Column(
          children: [
            Flexible(
              flex: Constants.flex3,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        SelectableText(
                          /// Display the API version
                          '${Constants.apiGuideTxt} ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.blackColor
                                : ConstantsLightMode.blackColor,
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
                                    ? ConstantsDarkMode.themeColor(context)
                                    : ConstantsLightMode.themeColor(context),
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
                                        ? ConstantsDarkMode.themeColorLight(
                                            context)
                                        : ConstantsLightMode.themeColorLight(
                                            context),
                                    fontWeight: FontWeight.normal,
                                    fontSize: Constants.size10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: Constants.flex18,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    appState.introText == Constants.emptyTxt
                        ? SizedBox()
                        : InkWell(
                            /// Introduction section link
                            onTap: () =>
                                NavigationFunctions().scrollToIntroDrawer(
                              /// BuildContext
                              context,
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
                                        : ConstantsLightMode.themeColor(
                                            context),
                                    fontSize: Constants.size15,
                                  ),
                                )
                              ],
                            ),
                          ),
                    appState.apiItemList.isEmpty
                        ? SizedBox()
                        : SizedBox(height: Constants.size15),
                    appState.apiItemList.isEmpty
                        ? SizedBox()
                        : Column(
                            /// List of API items and their links
                            children: appState.apiItemList
                                .map((item) => Column(
                                      children: [
                                        InkWell(
                                          /// Scroll to the api item on tap
                                          onTap: () => NavigationFunctions()
                                              .scrollToAPIItemDrawer(
                                            /// BuildContext
                                            context,

                                            /// APIItem
                                            item,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Constants
                                                        .arrowDoubleNavIcon,

                                                    /// Check the current light/dark theme mode
                                                    color: themeState.isDarkMode
                                                        ? ConstantsDarkMode
                                                            .themeColor(context)
                                                        : ConstantsLightMode
                                                            .themeColor(
                                                                context),
                                                    size: Constants.size15,
                                                  ),
                                                  Text(
                                                    item.title,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,

                                                      /// Check the current light/dark theme mode
                                                      color: themeState
                                                              .isDarkMode
                                                          ? ConstantsDarkMode
                                                              .themeColor(
                                                                  context)
                                                          : ConstantsLightMode
                                                              .themeColor(
                                                                  context),
                                                      fontSize:
                                                          Constants.size15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: Constants.size30),
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Constants.size10),
                                                ),
                                                child: SizedBox(
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color: Constants
                                                          .getMethodColor(
                                                        item.request.method
                                                            .name,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                        Constants.size10,
                                                        Constants.size5,
                                                        Constants.size10,
                                                        Constants.size5,
                                                      ),
                                                      child: Text(
                                                        item.request.method
                                                            .name,
                                                        style: TextStyle(
                                                          /// Check the current light/dark theme mode
                                                          color: themeState
                                                                  .isDarkMode
                                                              ? ConstantsDarkMode
                                                                  .whiteColor
                                                              : ConstantsLightMode
                                                                  .whiteColor,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              Constants.size10,
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
                    appState.apiFaqs.isEmpty
                        ? SizedBox()
                        : InkWell(
                            /// FAQ section link
                            onTap: () =>
                                NavigationFunctions().scrollToFaqDrawer(
                              /// BuildContext
                              context,
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
                                        : ConstantsLightMode.themeColor(
                                            context),
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
            Flexible(
              flex:

                  /// Check if the [contactLink] is empty
                  appState.contactEmail == null ||
                          appState.contactEmail == Constants.emptyTxt
                      ? Constants.flex0
                      : Constants.flex1,
              child: Column(
                children: [
                  /// Check if the [contactLink] is empty
                  appState.contactEmail == null ||
                          appState.contactEmail == Constants.emptyTxt
                      ? SizedBox()
                      : SizedBox(
                          height:

                              /// Check screens larger than [Constants.smallBreakPoint]
                              MediaQuery.of(context).size.width <=
                                      Constants.smallBreakPoint
                                  ? Constants.size2
                                  : Constants.size15),

                  /// Check if the [contactLink] is empty
                  appState.contactEmail == null ||
                          appState.contactEmail == Constants.emptyTxt
                      ? SizedBox()
                      : Expanded(
                          child: InkWell(
                            onTap: () =>
                                Functions().sendEmail(appState.contactEmail!),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${Constants.contactUsTxt}: ${appState.contactEmail!}',
                                  style: TextStyle(
                                    /// Make text responsive
                                    fontSize: Constants.size10,

                                    /// Check the current light/dark theme mode
                                    color: themeState.isDarkMode
                                        ? ConstantsDarkMode.themeColor(context)
                                        : ConstantsLightMode.themeColor(
                                            context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
