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

/// Define [optionalSecurityHint] function
Padding optionalSecurityHint(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

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
              color: themeState.isDarkMode
                  ? ConstantsDarkMode.themeColorLight(context)
                  : ConstantsLightMode.themeColorLight(context),

              borderRadius: BorderRadius.circular(Constants.size8),
              border: Border.all(
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.themeColor(context)!
                    : ConstantsLightMode.themeColor(context)!,
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
                        color: themeState.isDarkMode
                            ? ConstantsDarkMode.themeColor(context)
                            : ConstantsLightMode.themeColor(context),
                        size: Constants.size15,
                      ),
                    ),
                    Expanded(
                      child: SelectableText(
                        Constants.optionalSecurityTxt,
                        style: TextStyle(
                          color: themeState.isDarkMode
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
