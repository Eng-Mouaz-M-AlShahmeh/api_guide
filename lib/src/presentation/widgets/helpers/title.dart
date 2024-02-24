import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [titleArrowDouble] function
SizedBox titleArrowDouble(
  /// WidgetRef
  WidgetRef ref,

  /// String title text
  String title,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return SizedBox(
    width: double.infinity,
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Icon(
          Constants.arrowDoubleNavIcon,

          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.themeColor(ref)
              : ConstantsLightMode.themeColor(ref),
          size: Constants.size20,
        ),
        SelectableText(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,

            /// Check the current light/dark theme mode
            color: isDarkMode
                ? ConstantsDarkMode.themeColor(ref)
                : ConstantsLightMode.themeColor(ref),
            fontSize: Constants.size20,
          ),
        )
      ],
    ),
  );
}

/// Define [subTitleArrowDouble] function
Wrap subTitleArrowDouble(WidgetRef ref, String title) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      Icon(
        Constants.arrowDoubleNavIcon,

        /// Check the current light/dark theme mode
        color: isDarkMode
            ? ConstantsDarkMode.themeColor(ref)
            : ConstantsLightMode.themeColor(ref),
        size: Constants.size15,
      ),
      SelectableText(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,

          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.themeColor(ref)
              : ConstantsLightMode.themeColor(ref),
          fontSize: Constants.size14,
        ),
      ),
    ],
  );
}
