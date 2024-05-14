import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Close Search Dialog Button from type of [ElevatedButton]
ElevatedButton closeSearchDialogButton(
  /// WidgetRef
  WidgetRef ref,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        /// Check the current light/dark theme mode
        isDarkMode
            ? ConstantsDarkMode.themeColor(ref)
            : ConstantsLightMode.themeColor(ref),
      ),
      foregroundColor: WidgetStateProperty.all(
        /// Check the current light/dark theme mode
        isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontSize: Constants.size10,

          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.greyLightColor
              : ConstantsLightMode.greyLightColor,
        ),
      ),
    ),
    onPressed: () {
      /// Reset the isOpened state
      ref.read(isOpenSearchProvider.notifier).state = false;
    },
    child: Text(Constants.closeTxt),
  );
}

/// Close Sample Code Dialog Button from type of [ElevatedButton]
ElevatedButton closeSampleCodeDialogButton(
  /// WidgetRef
  WidgetRef ref,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        /// Check the current light/dark theme mode
        isDarkMode
            ? ConstantsDarkMode.themeColor(ref)
            : ConstantsLightMode.themeColor(ref),
      ),
      foregroundColor: WidgetStateProperty.all(
        /// Check the current light/dark theme mode
        isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontSize: Constants.size10,

          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.greyLightColor
              : ConstantsLightMode.greyLightColor,
        ),
      ),
    ),
    onPressed: () {
      /// Toggle the [_isOpened] state
      ref.read(isOpenSampleCodeProvider.notifier).state = false;
    },
    child: Text(Constants.closeTxt),
  );
}

/// Close Server Dialog Button from type of [ElevatedButton]
ElevatedButton closeServerDialogButton(
  /// WidgetRef
  WidgetRef ref,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        /// Check the current light/dark theme mode
        isDarkMode
            ? ConstantsDarkMode.themeColor(ref)
            : ConstantsLightMode.themeColor(ref),
      ),
      foregroundColor: WidgetStateProperty.all(
        /// Check the current light/dark theme mode
        isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontSize: Constants.size10,

          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.greyLightColor
              : ConstantsLightMode.greyLightColor,
        ),
      ),
    ),
    onPressed: () {
      /// Toggle the [_isOpened] state
      ref.read(isOpenServerProvider.notifier).state = false;
    },
    child: Text(Constants.closeTxt),
  );
}
