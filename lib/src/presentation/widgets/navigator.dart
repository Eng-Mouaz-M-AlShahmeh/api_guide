import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [apiGuideNavigator] function
Padding apiGuideNavigator(
  /// WidgetRef
  WidgetRef ref,

  /// BuildContext
  BuildContext context,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

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
            color: isDarkMode
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
                        ref.watch(introTextProvider) == Constants.emptyTxt
                            ? SizedBox()
                            : InkWell(
                                /// Introduction section link
                                onTap: () =>
                                    NavigationFunctions().scrollToIntro(
                                  /// WidgetRef
                                  ref,

                                  /// isPop bool value
                                  false,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Constants.arrowDoubleNavIcon,

                                      /// Check the current light/dark theme mode
                                      color: isDarkMode
                                          ? ConstantsDarkMode.themeColor(ref)
                                          : ConstantsLightMode.themeColor(ref),
                                      size: Constants.size15,
                                    ),
                                    Text(
                                      Constants.introTxt,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,

                                        /// Check the current light/dark theme mode
                                        color: isDarkMode
                                            ? ConstantsDarkMode.themeColor(ref)
                                            : ConstantsLightMode.themeColor(
                                                ref),
                                        fontSize: Constants.size15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                        ref.watch(apiItemListProvider).isEmpty
                            ? SizedBox()
                            : SizedBox(height: Constants.size15),
                        ref.watch(apiItemListProvider).isEmpty
                            ? SizedBox()
                            : Column(
                                /// List of API items and their links
                                children: ref
                                    .watch(apiItemListProvider)
                                    .map((item) => Column(
                                          children: [
                                            InkWell(
                                              /// Scroll to the api item on tap
                                              onTap: () => NavigationFunctions()
                                                  .scrollToAPIItem(
                                                /// WidgetRef
                                                ref,

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
                                                        color: isDarkMode
                                                            ? ConstantsDarkMode
                                                                .themeColor(ref)
                                                            : ConstantsLightMode
                                                                .themeColor(
                                                                    ref),
                                                        size: Constants.size15,
                                                      ),
                                                      Text(
                                                        item.title,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,

                                                          /// Check the current light/dark theme mode
                                                          color: isDarkMode
                                                              ? ConstantsDarkMode
                                                                  .themeColor(
                                                                      ref)
                                                              : ConstantsLightMode
                                                                  .themeColor(
                                                                      ref),
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
                                                              color: isDarkMode
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
                        ref.watch(apiFaqsProvider).isEmpty
                            ? SizedBox()
                            : InkWell(
                                /// FAQ section link
                                onTap: () => NavigationFunctions().scrollToFaq(
                                  /// WidgetRef
                                  ref,

                                  /// bool isPop value
                                  false,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Constants.arrowDoubleNavIcon,

                                      /// Check the current light/dark theme mode
                                      color: isDarkMode
                                          ? ConstantsDarkMode.themeColor(ref)
                                          : ConstantsLightMode.themeColor(ref),
                                      size: Constants.size15,
                                    ),
                                    Text(
                                      Constants.faqsShortTxt,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,

                                        /// Check the current light/dark theme mode
                                        color: isDarkMode
                                            ? ConstantsDarkMode.themeColor(ref)
                                            : ConstantsLightMode.themeColor(
                                                ref),
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
                      ref.watch(contactEmailProvider) == null ||
                              ref.watch(contactEmailProvider) ==
                                  Constants.emptyTxt
                          ? Constants.flex0
                          : Constants.flex1,
                  child: Column(
                    children: [
                      /// Check if the [contactLink] is empty
                      ref.watch(contactEmailProvider) == null ||
                              ref.watch(contactEmailProvider) ==
                                  Constants.emptyTxt
                          ? SizedBox()
                          : SizedBox(height: Constants.size15),

                      /// Check if the [contactLink] is empty
                      ref.watch(contactEmailProvider) == null ||
                              ref.watch(contactEmailProvider) ==
                                  Constants.emptyTxt
                          ? SizedBox()
                          : InkWell(
                              /// Open email service when tap
                              onTap: () => Functions()
                                  .sendEmail(ref.watch(contactEmailProvider)!),
                              child: Text(
                                '${Constants.contactUsTxt}: ${ref.watch(contactEmailProvider)!}',
                                style: TextStyle(
                                  fontSize: Constants.size10,

                                  /// Check the current light/dark theme mode
                                  color: isDarkMode
                                      ? ConstantsDarkMode.themeColor(ref)
                                      : ConstantsLightMode.themeColor(ref),
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
