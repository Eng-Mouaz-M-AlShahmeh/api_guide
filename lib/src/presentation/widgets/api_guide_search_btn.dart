/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
/// Import [dart:io]
import 'dart:io';

/// Import [flutter/foundation] package files
import 'package:flutter/foundation.dart';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideSearchBtn extends StatelessWidget {
  const APIGuideSearchBtn({
    /// Constructor
    super.key,

    /// Theme State Notifier
    required this.themeState,
  });

  /// Theme State Notifier
  final ThemeStateNotifier themeState;

  @override
  Widget build(BuildContext context) {
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
                            ? ConstantsDarkMode.indigoColor
                            : ConstantsLightMode.indigoColor,
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
                                        ? ConstantsDarkMode.indigoLightColor
                                        : ConstantsLightMode.indigoLightColor,
                                  )
                                : Platform.isMacOS
                                    ? Icon(
                                        Constants.cmdKeyIcon,
                                        size: Constants.size10,

                                        /// Check the current light/dark theme mode
                                        color: themeState.isDarkMode
                                            ? ConstantsDarkMode.indigoLightColor
                                            : ConstantsLightMode
                                                .indigoLightColor,
                                      )
                                    : Platform.isWindows
                                        ? Icon(
                                            Constants.cmdKeyIcon,
                                            size: Constants.size10,

                                            /// Check the current light/dark theme mode
                                            color: themeState.isDarkMode
                                                ? ConstantsDarkMode
                                                    .indigoLightColor
                                                : ConstantsLightMode
                                                    .indigoLightColor,
                                          )
                                        : SizedBox(),

                            /// Check the current platform to apply specific style
                            kIsWeb
                                ? Text(
                                    Constants.plusKTxt,
                                    style: TextStyle(
                                      /// Check the current light/dark theme mode
                                      color: themeState.isDarkMode
                                          ? ConstantsDarkMode.indigoLightColor
                                          : ConstantsLightMode.indigoLightColor,
                                    ),
                                  )
                                : Platform.isMacOS
                                    ? Text(
                                        Constants.plusKTxt,
                                        style: TextStyle(
                                          /// Check the current light/dark theme mode
                                          color: themeState.isDarkMode
                                              ? ConstantsDarkMode
                                                  .indigoLightColor
                                              : ConstantsLightMode
                                                  .indigoLightColor,
                                        ),
                                      )
                                    : Platform.isWindows
                                        ? Text(
                                            Constants.plusKTxt,
                                            style: TextStyle(
                                              /// Check the current light/dark theme mode
                                              color: themeState.isDarkMode
                                                  ? ConstantsDarkMode
                                                      .indigoLightColor
                                                  : ConstantsLightMode
                                                      .indigoLightColor,
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
}

/// End of code
