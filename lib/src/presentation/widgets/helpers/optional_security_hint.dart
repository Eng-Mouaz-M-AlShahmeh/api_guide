import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [optionalSecurityHint] function
Padding optionalSecurityHint(
  /// WidgetRef
  WidgetRef ref,
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
        Radius.circular(Constants.size8),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              /// Check the current light/dark theme mode
              color: isDarkMode
                  ? ConstantsDarkMode.themeColorLight(ref)
                  : ConstantsLightMode.themeColorLight(ref),

              borderRadius: BorderRadius.circular(Constants.size8),
              border: Border.all(
                color: isDarkMode
                    ? ConstantsDarkMode.themeColor(ref)!
                    : ConstantsLightMode.themeColor(ref)!,
                width: Constants.size3,
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(Constants.size8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        Constants.size8,
                        Constants.size2,
                        Constants.size8,
                        Constants.size0,
                      ),
                      child: Icon(
                        Constants.errorIcon,

                        /// Check the current light/dark theme mode
                        color: isDarkMode
                            ? ConstantsDarkMode.themeColor(ref)
                            : ConstantsLightMode.themeColor(ref),
                        size: Constants.size15,
                      ),
                    ),
                    Expanded(
                      child: SelectableText(
                        Constants.optionalSecurityTxt,
                        style: TextStyle(
                          color: isDarkMode
                              ? ConstantsDarkMode.blackColor
                              : ConstantsLightMode.blackColor,
                          fontWeight: FontWeight.normal,
                          fontSize: Constants.size13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
