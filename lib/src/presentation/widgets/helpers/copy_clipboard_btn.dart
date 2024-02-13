/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package
/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [flutter/services] package files
import 'package:flutter/services.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [copyClipboardButton] function
InkWell copyClipboardButton(
  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  return InkWell(
    onTap: () {
      /// Copy Sample Code to Clipboard when click the icon
      Clipboard.setData(
        ClipboardData(
          text: SampleCodeFunctions().getFinalSampleCode(context, item),
        ),
      );

      /// Show notification message by successful copy function
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          /// Check the current light/dark theme mode
          backgroundColor: themeState.isDarkMode
              ? ConstantsDarkMode.themeColor(context)
              : ConstantsLightMode.themeColor(context),
          content: SelectableText(
            Constants.textCopiedTxt,
            style: TextStyle(
              /// Check the current light/dark theme mode
              color: themeState.isDarkMode
                  ? ConstantsDarkMode.themeColorLight(context)
                  : ConstantsLightMode.themeColorLight(context),
            ),
          ),
        ),
      );
    },
    child: Icon(
      Constants.copyIcon,
      size: Constants.size22,

      /// Check the current light/dark theme mode
      color: themeState.isDarkMode
          ? ConstantsDarkMode.themeColorLight(context)
          : ConstantsLightMode.themeColor(context),
    ),
  );
}
