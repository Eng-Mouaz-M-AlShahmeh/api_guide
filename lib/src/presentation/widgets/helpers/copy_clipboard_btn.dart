import 'package:flutter/material.dart';

/// Import [flutter/services] package files
import 'package:flutter/services.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [copyClipboardButton] function
InkWell copyClipboardButton(
  /// WidgetRef
  WidgetRef ref,

  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return InkWell(
    onTap: () {
      /// Copy Sample Code to Clipboard when click the icon
      Clipboard.setData(
        ClipboardData(
          text: SampleCodeFunctions().getFinalSampleCode(ref, item),
        ),
      );

      /// Show notification message by successful copy function
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          /// Check the current light/dark theme mode
          backgroundColor: isDarkMode
              ? ConstantsDarkMode.themeColor(ref)
              : ConstantsLightMode.themeColor(ref),
          content: SelectableText(
            Constants.textCopiedTxt,
            style: TextStyle(
              /// Check the current light/dark theme mode
              color: isDarkMode
                  ? ConstantsDarkMode.themeColorLight(ref)
                  : ConstantsLightMode.themeColorLight(ref),
            ),
          ),
        ),
      );
    },
    child: Icon(
      Constants.copyIcon,
      size: Constants.size22,

      /// Check the current light/dark theme mode
      color: isDarkMode
          ? ConstantsDarkMode.themeColorLight(ref)
          : ConstantsLightMode.themeColor(ref),
    ),
  );
}
