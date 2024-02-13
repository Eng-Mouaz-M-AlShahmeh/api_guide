import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [apiGuideSearchBtn] function
Row apiGuideSearchBtn(
  /// BuildContext
  BuildContext context,
) {
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

          SizedBox(width: Constants.size8),

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
                          Icon(
                            Constants.cmdKeyIcon,
                            size: Constants.size10,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.themeColorLight(context)
                                : ConstantsLightMode.themeColorLight(context),
                          ),
                          Text(
                            Constants.plusKTxt,
                            style: TextStyle(
                              /// Check the current light/dark theme mode
                              color: themeState.isDarkMode
                                  ? ConstantsDarkMode.themeColorLight(context)
                                  : ConstantsLightMode.themeColorLight(context),
                            ),
                          ),
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
