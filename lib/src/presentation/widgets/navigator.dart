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

/// Define [apiGuideNavigator] function
Padding apiGuideNavigator(
  /// BuildContext
  BuildContext context,
) {
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
          child: Padding(
            padding: const EdgeInsets.all(Constants.size20),
            child: Column(
              children: [
                SizedBox(height: Constants.size15),
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
                                    NavigationFunctions().scrollToIntro(
                                  /// BuildContext
                                  context,

                                  /// isPop bool value
                                  false,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                      Constants.introTxt,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,

                                        /// Check the current light/dark theme mode
                                        color: themeState.isDarkMode
                                            ? ConstantsDarkMode.themeColor(
                                                context)
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
                                                  .scrollToAPIItem(
                                                /// BuildContext
                                                context,

                                                /// APIItem
                                                item,

                                                /// bool isPop value
                                                false,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Constants
                                                            .arrowDoubleNavIcon,

                                                        /// Check the current light/dark theme mode
                                                        color: themeState
                                                                .isDarkMode
                                                            ? ConstantsDarkMode
                                                                .themeColor(
                                                                    context)
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
                                                  SizedBox(
                                                      width: Constants.size30),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                          Constants.size10),
                                                    ),
                                                    child: SizedBox(
                                                      child: DecoratedBox(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Constants
                                                              .getMethodColor(
                                                            item.request.method
                                                                .name,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
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
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  Constants
                                                                      .size10,
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
                                onTap: () => NavigationFunctions().scrollToFaq(
                                  /// BuildContext
                                  context,

                                  /// bool isPop value
                                  false,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                      Constants.faqsShortTxt,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,

                                        /// Check the current light/dark theme mode
                                        color: themeState.isDarkMode
                                            ? ConstantsDarkMode.themeColor(
                                                context)
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
                          : SizedBox(height: Constants.size15),

                      /// Check if the [contactLink] is empty
                      appState.contactEmail == null ||
                              appState.contactEmail == Constants.emptyTxt
                          ? SizedBox()
                          : InkWell(
                              /// Open email service when tap
                              onTap: () =>
                                  Functions().sendEmail(appState.contactEmail!),
                              child: Text(
                                '${Constants.contactUsTxt}: ${appState.contactEmail!}',
                                style: TextStyle(
                                  fontSize: Constants.size10,

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.themeColor(context)
                                      : ConstantsLightMode.themeColor(context),
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
      ),
    ),
  );
}
