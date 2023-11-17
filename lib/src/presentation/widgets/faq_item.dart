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

/// Code starts here
/// Define [apiGuideFaqItems] function
Padding apiGuideFaqItems(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appStateWatch = context.watch<AppProvider>();

  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: Constants.size15,
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(Constants.size15),
      ),
      child: ExpansionPanelList(
        /// Check the current light/dark theme mode
        expandIconColor: themeState.isDarkMode
            ? ConstantsDarkMode.blackColor
            : ConstantsLightMode.blackColor,
        expansionCallback: (index, isExpanded) {
          /// Update the expansion state when a panel is clicked
          appState.updateAPIFaqsItemIsExpanded(index, isExpanded);
        },

        /// List of API FAQs to be displayed
        children: appStateWatch.apiFaqs
            .map(
              (item) => ExpansionPanel(
                /// Check the current light/dark theme mode
                backgroundColor: themeState.isDarkMode
                    ? ConstantsDarkMode.greyLightColor
                    : ConstantsLightMode.greyLightColor,
                canTapOnHeader: true,

                /// Whether the panel is expanded or not
                isExpanded: item.isExpanded ?? false,
                headerBuilder: (context, isExpanded) => ListTile(
                  title: Text(
                    /// Display the FAQ question
                    item.question,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Constants.size15,

                      /// Check the current light/dark theme mode
                      color: themeState.isDarkMode
                          ? ConstantsDarkMode.themeColor(context)
                          : ConstantsLightMode.themeColor(context),
                    ),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(Constants.size15),
                  child: Row(
                    children: [
                      Flexible(
                        child: SelectableText(
                          /// Display the FAQ answer
                          item.answer,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size15,
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.blackColor
                                : ConstantsLightMode.blackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    ),
  );
}

/// End of code
