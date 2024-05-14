import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [apiGuideSearchScreen] function
Padding apiGuideSearchScreen(
  /// WidgetRef
  WidgetRef ref,

  /// BuildContext
  BuildContext context,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return Padding(
    padding: const EdgeInsets.all(Constants.size10),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          /// Check the current light/dark theme mode
          isDarkMode
              ? ConstantsDarkMode.greyLightColor
              : ConstantsLightMode.greyLightColor,
        ),
        foregroundColor: WidgetStateProperty.all(
          /// Check the current light/dark theme mode
          isDarkMode
              ? ConstantsDarkMode.themeColor(ref)
              : ConstantsLightMode.themeColor(ref),
        ),
        textStyle: WidgetStateProperty.all(
          TextStyle(
            fontSize: Constants.size10,

            /// Check the current light/dark theme mode
            color: isDarkMode
                ? ConstantsDarkMode.themeColor(ref)
                : ConstantsLightMode.themeColor(ref),
          ),
        ),
      ),
      onPressed: () {
        /// Open the search dialog
        /// Toggle the [isOpened] state
        ref.read(isOpenSearchProvider.notifier).state = true;

        /// Reset the search key
        ref.read(searchKeyProvider.notifier).state = '';
      },
      child: apiGuideSearchBtn(context, ref),
    ),
  );
}
