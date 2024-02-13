/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package
/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [animatedSearchContainer] function
InkWell animatedSearchContainer(
  BuildContext context,
  bool isHovered,
  String title,
  String subtitle,
  Function()? onTap,
  Function(bool)? onHover,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

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
            ? themeState.isDarkMode
                ? ConstantsDarkMode.themeColorLight(context)
                : ConstantsLightMode.themeColorLight(context)
            : themeState.isDarkMode
                ? ConstantsDarkMode.whiteColor
                : ConstantsLightMode.whiteColor,
        borderRadius: BorderRadius.circular(
          Constants.size5,
        ),
        border: Border.all(
          /// Check the current light/dark
          /// theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.themeColor(context)!
              : ConstantsLightMode.themeColor(context)!,
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
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.themeColor(context)
                    : ConstantsLightMode.themeColor(context),
                size: Constants.size15,
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,

                  /// Check the current
                  /// light/dark theme mode
                  color: themeState.isDarkMode
                      ? ConstantsDarkMode.themeColor(context)
                      : ConstantsLightMode.themeColor(context),
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
