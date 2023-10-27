/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideItemBodyStart extends StatelessWidget {
  const APIGuideItemBodyStart({
    /// Super key for widget
    super.key,

    /// API item for which to display the body start
    required this.item,
  });

  /// API item for which to display the body start
  final APIItem item;

  @override
  Widget build(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes state
    final themeState = ThemeNotifierProvider.of(context).themeStateNotifier;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Constants.size15),

        /// Display the item's description
        Text(
          item.description,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: Constants.size15,

            /// Check the current light/dark theme mode
            color: themeState.isDarkMode
                ? ConstantsDarkMode.blackColor
                : ConstantsLightMode.blackColor,
          ),
        ),
        SizedBox(height: Constants.size30),

        /// Display "Request Body" text if the request body exists
        item.request.body.isEmpty
            ? SizedBox()
            : Text(
                Constants.requestBodyTxt,
                style: TextStyle(
                  /// Check the current light/dark theme mode
                  color: themeState.isDarkMode
                      ? ConstantsDarkMode.indigoColor
                      : ConstantsLightMode.indigoColor,
                  fontWeight: FontWeight.normal,
                  fontSize: Constants.size15,
                ),
              ),
        SizedBox(height: Constants.size5),

        /// Display details of the request body
        Column(
          children: item.request.body
              .map((e) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                e.key,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Constants.size14,

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.blackColor
                                      : ConstantsLightMode.blackColor,
                                ),
                              ),
                              Text(
                                ' (${e.type.name}) ',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: Constants.size12,
                                  color: Constants.orangeColor,
                                ),
                              ),
                              Text(
                                Constants.lineTxt,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: Constants.size10,
                                  color: Constants.greyColor,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            e.isRequired
                                ? Constants.requiredTxt
                                : Constants.emptyTxt,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: Constants.size10,
                              color: Constants.orangeColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Constants.size10),
                      Text(
                        e.description,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: Constants.size12,

                          /// Check the current light/dark theme mode
                          color: themeState.isDarkMode
                              ? ConstantsDarkMode.blackColor
                              : ConstantsLightMode.blackColor,
                        ),
                      ),
                      SizedBox(height: Constants.size15),
                    ],
                  ))
              .toList(),
        ),
      ],
    );
  }
}

/// End of code
