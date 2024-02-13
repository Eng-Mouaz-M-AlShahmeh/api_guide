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

/// Define [titleArrowDouble] function
SizedBox titleArrowDouble(
  /// BuildContext
  BuildContext context,

  /// String title text
  String title,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  return SizedBox(
    width: double.infinity,
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
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
          title,
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
  );
}

/// Define [subTitleArrowDouble] function
Wrap subTitleArrowDouble(BuildContext context, String title) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      Icon(
        Constants.arrowDoubleNavIcon,

        /// Check the current light/dark theme mode
        color: themeState.isDarkMode
            ? ConstantsDarkMode.themeColor(context)
            : ConstantsLightMode.themeColor(context),
        size: Constants.size15,
      ),
      SelectableText(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,

          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.themeColor(context)
              : ConstantsLightMode.themeColor(context),
          fontSize: Constants.size14,
        ),
      ),
    ],
  );
}
