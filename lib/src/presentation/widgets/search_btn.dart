/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [dart:io]
import 'dart:io';

/// Import [flutter/foundation] package files
import 'package:flutter/foundation.dart';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
Row apiGuideSearchBtn(BuildContext context) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Constants.searchIcon),
      SizedBox(width: Constants.size8),
      Row(
        children: [
          Text(Constants.searchTxt),

          /// Check the current platform to apply specific style
          kIsWeb
              ? SizedBox(width: Constants.size8)
              : Platform.isMacOS
                  ? SizedBox(width: Constants.size8)
                  : Platform.isWindows
                      ? SizedBox(width: Constants.size8)
                      : SizedBox(),

          /// Appear only on screens larger than [Constants.smallBreakPoint]
          MediaQuery.of(context).size.width <= Constants.smallBreakPoint
              ? SizedBox()
              : SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Constants.size5),

                      /// Check the current light/dark theme mode
                      color: themeState.isDarkMode
                          ? ConstantsDarkMode.themeColor(context)
                          : ConstantsLightMode.themeColor(context),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(Constants.size5),
                      child: Row(
                        children: [
                          /// Check the current platform to apply specific style
                          kIsWeb
                              ? Icon(
                                  Constants.cmdKeyIcon,
                                  size: Constants.size10,

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.themeColorLight(
                                          context)
                                      : ConstantsLightMode.themeColorLight(
                                          context),
                                )
                              : Platform.isMacOS
                                  ? Icon(
                                      Constants.cmdKeyIcon,
                                      size: Constants.size10,

                                      /// Check the current light/dark theme mode
                                      color: themeState.isDarkMode
                                          ? ConstantsDarkMode.themeColorLight(
                                              context)
                                          : ConstantsLightMode.themeColorLight(
                                              context),
                                    )
                                  : Platform.isWindows
                                      ? Text(
                                          Constants.ctrlTxt,
                                          style: TextStyle(
                                            /// Check the current light/dark theme mode
                                            color: themeState.isDarkMode
                                                ? ConstantsDarkMode
                                                    .themeColorLight(context)
                                                : ConstantsLightMode
                                                    .themeColorLight(context),
                                          ),
                                        )
                                      : SizedBox(),

                          /// Check the current platform to apply specific style
                          kIsWeb || Platform.isMacOS || Platform.isWindows
                              ? Text(
                                  Constants.plusKTxt,
                                  style: TextStyle(
                                    /// Check the current light/dark theme mode
                                    color: themeState.isDarkMode
                                        ? ConstantsDarkMode.themeColorLight(
                                            context)
                                        : ConstantsLightMode.themeColorLight(
                                            context),
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                )
        ],
      ),
    ],
  );
}

/// End of code
