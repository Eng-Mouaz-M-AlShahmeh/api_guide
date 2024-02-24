import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [apiGuideSearchBtn] function
Row apiGuideSearchBtn(
  /// BuildContext
  BuildContext context,

  /// WidgetRef
  WidgetRef ref,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

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
                      color: isDarkMode
                          ? ConstantsDarkMode.themeColor(ref)
                          : ConstantsLightMode.themeColor(ref),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(Constants.size5),
                      child: Row(
                        children: [
                          Icon(
                            Constants.cmdKeyIcon,
                            size: Constants.size10,

                            /// Check the current light/dark theme mode
                            color: isDarkMode
                                ? ConstantsDarkMode.themeColorLight(ref)
                                : ConstantsLightMode.themeColorLight(ref),
                          ),
                          Text(
                            Constants.plusKTxt,
                            style: TextStyle(
                              /// Check the current light/dark theme mode
                              color: isDarkMode
                                  ? ConstantsDarkMode.themeColorLight(ref)
                                  : ConstantsLightMode.themeColorLight(ref),
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
