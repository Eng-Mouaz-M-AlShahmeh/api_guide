/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideItemBodyEnd extends StatelessWidget {
  const APIGuideItemBodyEnd({
    /// Super key for widget
    super.key,

    /// API item for which to display the request
    required this.item,

    /// Host URL
    required this.urlHost,
  });

  /// API item for which to display the request
  final APIItem item;

  /// Host URL
  final String urlHost;

  @override
  Widget build(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes state
    final themeState = ThemeNotifierProvider.of(context).themeStateNotifier;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Display sample code for the request
        APIGuideSampleCode(
          item: item,
          urlHost: urlHost,
        ),
        SizedBox(height: Constants.size30),

        /// Display "Responses" text if responses exist
        item.response.isEmpty
            ? SizedBox()
            : Text(
                Constants.responsesTxt,
                style: TextStyle(
                  fontWeight: FontWeight.normal,

                  /// Check the current light/dark theme mode
                  color: themeState.isDarkMode
                      ? ConstantsDarkMode.indigoColor
                      : ConstantsLightMode.indigoColor,
                  fontSize: Constants.size14,
                ),
              ),

        /// Add spacing if responses exist
        item.response.isEmpty ? SizedBox() : SizedBox(height: Constants.size20),

        /// Display each response
        item.response.isEmpty
            ? SizedBox()
            : Column(
                children: item.response
                    .map(
                      (itemResponse) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: Constants.size10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  itemResponse.statusCode.statusTitle,
                                  style: TextStyle(
                                    color: Constants.getStatusColor(
                                        itemResponse.statusCode.statusCode),
                                    fontWeight: FontWeight.normal,
                                    fontSize: Constants.size15,
                                  ),
                                ),
                                SizedBox(width: Constants.size15),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(Constants.size15)),
                                  child: SizedBox(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Constants.getStatusColor(
                                            itemResponse.statusCode.statusCode),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                          Constants.size15,
                                          Constants.size5,
                                          Constants.size15,
                                          Constants.size5,
                                        ),
                                        child: Text(
                                          itemResponse.statusCode.statusCode
                                              .toString(),
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
                            SizedBox(height: Constants.size15),

                            /// Display the response body if it exists
                            itemResponse.body.isEmpty
                                ? SizedBox()
                                : Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Constants.size8),

                                              /// Check the current light/dark theme mode
                                              color: themeState.isDarkMode
                                                  ? Constants.greyDarkColor
                                                  : Constants.greyDarkColor,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                  Constants.size10),

                                              /// Display the response body in a code block
                                              child: SelectableText(
                                                SampleCode().getResponseCode(
                                                    itemResponse.body),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: Constants.size12,
                                                  color:
                                                      Constants.greenCodeColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
      ],
    );
  }
}

/// End of code
