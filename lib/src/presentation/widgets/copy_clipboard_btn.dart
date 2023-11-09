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
import '../../../api_guide.dart';

/// Code starts here
InkWell copyClipboardButton(BuildContext context, APIItem item) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return InkWell(
    onTap: () {
      /// Copy Sample Code to Clipboard when click the icon
      Clipboard.setData(
        ClipboardData(
          text: SampleCode().getSampleCode(
            SampleCode().chooseCodeType(appState.sampleCodeType),
            [
              item.request.method.name,
              appState.urlHost,
              item.urlPath,
              item.request.body
                  .map((e) => '"${e.key}":"${e.value}"')
                  .join(', '),
            ],
          ),
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
      size: Constants.size15,

      /// Check the current light/dark theme mode
      color: themeState.isDarkMode
          ? ConstantsDarkMode.themeColor(context)
          : ConstantsLightMode.themeColor(context),
    ),
  );
}

/// End of code