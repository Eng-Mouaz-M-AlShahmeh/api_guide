/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [apiGuideFaqItems] function
Column apiGuideFaqItems(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return Column(
    children: appState.apiFaqs
        .map(
          (item) => ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(Constants.size8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Constants.size5),

                InkWell(
                  onTap: () {
                    /// Update the expansion state when a panel is clicked
                    appState.updateAPIFaqsItemIsExpanded(item,
                        item.isExpanded == null ? true : !item.isExpanded!);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        item.isExpanded == true
                            ? Constants.size0
                            : Constants.size8,
                      ),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        /// Check the current light/dark theme mode
                        color: themeState.isDarkMode
                            ? ConstantsDarkMode.greyLightColor
                            : ConstantsLightMode.greyLightColor,

                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            Constants.size8,
                          ),
                          topRight: Radius.circular(
                            Constants.size8,
                          ),
                        ),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(Constants.size8),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(
                                Constants.arrowNavIcon,

                                /// Check the current light/dark theme mode
                                color: themeState.isDarkMode
                                    ? ConstantsDarkMode.themeColor(context)
                                    : ConstantsLightMode.themeColor(context),
                                size: Constants.size15,
                              ),
                              Text(
                                item.question,
                                style: TextStyle(
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.themeColor(context)
                                      : ConstantsLightMode.themeColor(context),
                                  fontWeight: FontWeight.bold,
                                  fontSize: Constants.size15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                /// Check if the faq item is expanded
                item.isExpanded == true
                    ? Divider(
                        height: Constants.size1,
                        thickness: Constants.size1,
                        color: themeState.isDarkMode
                            ? ConstantsDarkMode.whiteColor
                            : ConstantsLightMode.whiteColor,
                      )
                    : SizedBox(),

                /// Check if the faq item is expanded
                item.isExpanded == true
                    ? SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                      Constants.size8,
                                    ),
                                    bottomRight: Radius.circular(
                                      Constants.size8,
                                    ),
                                  ),

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.greyLightColor
                                      : ConstantsLightMode.greyLightColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    Constants.size10,
                                  ),

                                  /// Display the faq answer
                                  child: markdownWidget(
                                    context,
                                    item.answer,
                                    themeState.isDarkMode,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),

                /// Check if the faq item is expanded
                item.isExpanded == true
                    ? SizedBox(
                        height: Constants.size10,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        )
        .toList(),
  );
}
