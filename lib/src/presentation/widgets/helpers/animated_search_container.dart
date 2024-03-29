import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [animatedSearchContainer] function
InkWell animatedSearchContainer(
  WidgetRef ref,
  bool isHovered,
  String title,
  String subtitle,
  Function()? onTap,
  Function(bool)? onHover,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return InkWell(
    onTap: onTap,
    onHover: onHover,
    child: AnimatedContainer(
      duration: Duration(
        milliseconds: Constants.duration300,
      ),
      padding: EdgeInsets.all(Constants.size15),
      decoration: BoxDecoration(
        /// Check the current light/dark
        /// theme mode and hover state
        color: isHovered
            ? isDarkMode
                ? ConstantsDarkMode.themeColorLight(ref)
                : ConstantsLightMode.themeColorLight(ref)
            : isDarkMode
                ? ConstantsDarkMode.whiteColor
                : ConstantsLightMode.whiteColor,
        borderRadius: BorderRadius.circular(
          Constants.size5,
        ),
        border: Border.all(
          /// Check the current light/dark
          /// theme mode
          color: isDarkMode
              ? ConstantsDarkMode.themeColor(ref)!
              : ConstantsLightMode.themeColor(ref)!,
          width: Constants.size1,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Constants.arrowDoubleNavIcon,

                /// Check the current
                /// light/dark theme mode
                color: isDarkMode
                    ? ConstantsDarkMode.themeColor(ref)
                    : ConstantsLightMode.themeColor(ref),
                size: Constants.size15,
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,

                  /// Check the current
                  /// light/dark theme mode
                  color: isDarkMode
                      ? ConstantsDarkMode.themeColor(ref)
                      : ConstantsLightMode.themeColor(ref),
                  fontSize: Constants.size15,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                /// Check if the text is over
                /// the fixed length to make
                /// the pretty trim
                subtitle.length > Constants.size25
                    ? subtitle.substring(
                            Constants.size0.toInt(), Constants.size25.toInt()) +
                        Constants.restTxt
                    : subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.normal,

                  /// Check the current light/dark theme mode
                  color: Constants.greyColor,
                  fontSize: Constants.size10,
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
