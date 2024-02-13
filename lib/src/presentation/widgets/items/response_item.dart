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

/// Define [responseItem] function
Padding responseItem(
  /// BuildContext
  BuildContext context,

  /// APIGuideResponse
  APIGuideResponse itemResponse,
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
    child: DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.size8),
        border: Border.all(
          color: themeState.isDarkMode
              ? Constants.greyColor!
              : Constants.greyDarkColor!,
          width: Constants.size1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Constants.size1),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(Constants.size8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  /// Check the current light/dark theme mode
                  color: themeState.isDarkMode
                      ? Constants.greyDarkColor
                      : Constants.greyColor,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.size8),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Constants.arrowNavIcon,

                          /// Check the current light/dark theme mode
                          color: themeState.isDarkMode
                              ? ConstantsDarkMode.themeColor(context)
                              : ConstantsLightMode.themeColor(context),
                          size: Constants.size15,
                        ),
                        SelectableText(
                          itemResponse.statusCode.statusTitle,
                          style: TextStyle(
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.themeColor(context)
                                : ConstantsLightMode.themeColor(context),
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size13,
                          ),
                        ),
                        SizedBox(width: Constants.size15),
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(Constants.size15),
                          ),
                          child: SizedBox(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Constants.getStatusColor(
                                  itemResponse.statusCode.statusCode,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  Constants.size15,
                                  Constants.size5,
                                  Constants.size15,
                                  Constants.size5,
                                ),
                                child: Text(
                                  itemResponse.statusCode.statusCode.toString(),
                                  style: TextStyle(
                                    /// Check the current light/dark theme mode
                                    color: themeState.isDarkMode
                                        ? ConstantsDarkMode.whiteColor
                                        : ConstantsLightMode.whiteColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: Constants.size10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Divider(
                height: Constants.size1,
                thickness: Constants.size1,
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.greyLightColor
                    : ConstantsLightMode.greyLightColor,
              ),

              /// Display the response body if it exists
              itemResponse.body.isEmpty
                  ? SizedBox()
                  : SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    Constants.size8,
                                  ),
                                  bottomRight: Radius.circular(
                                    Constants.size8,
                                  ),
                                ),

                                /// Check the current light/dark theme mode
                                color: themeState.isDarkMode
                                    ? Constants.greyDarkColor
                                    : Constants.greyColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  Constants.size10,
                                ),

                                /// Display the response body in a code block
                                child: SelectableText(
                                  SampleCodeFunctions().getResponseCode(
                                    itemResponse.body,
                                  ),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: Constants.size12,
                                    color: Constants.greenCodeColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    ),
  );
}
