/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
/// Define [apiGuideItemBodyEnd] function
Column apiGuideItemBodyEnd(
  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      /// Display sample code for the request
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: Constants.size10,
              runSpacing: Constants.size10,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Constants.size0,
                    Constants.size15,
                    Constants.size0,
                    Constants.size0,
                  ),
                  child: Text(
                    Constants.sampleCodeTxt,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,

                      /// Check the current light/dark theme mode
                      color: themeState.isDarkMode
                          ? ConstantsDarkMode.themeColor(context)
                          : ConstantsLightMode.themeColor(context),
                      fontSize: Constants.size14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Constants.size8),
                  child: sampleCodeButton(context),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Constants.size0,
                    Constants.size12,
                    Constants.size0,
                    Constants.size10,
                  ),
                  child: copyClipboardButton(context, item),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Constants.size8),

                      /// Check the current light/dark theme mode
                      color: themeState.isDarkMode
                          ? Constants.greyDarkColor
                          : Constants.greyDarkColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(Constants.size10),

                      /// Make the sample code as selectable text
                      child: SelectableText(
                        SampleCodeFunctions().getFinalSampleCode(context, item),
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size12,
                            color: Constants.greenCodeColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: Constants.size30),

      /// Display "Responses" text if responses exist
      item.response.isEmpty
          ? SizedBox()
          : SelectableText(
              Constants.responsesTxt,
              style: TextStyle(
                fontWeight: FontWeight.normal,

                /// Check the current light/dark theme mode
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.themeColor(context)
                    : ConstantsLightMode.themeColor(context),
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
                              SelectableText(
                                itemResponse.statusCode.statusTitle,
                                style: TextStyle(
                                  color: Constants.getStatusColor(
                                    itemResponse.statusCode.statusCode,
                                  ),
                                  fontWeight: FontWeight.normal,
                                  fontSize: Constants.size15,
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
                                            borderRadius: BorderRadius.circular(
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
                                              SampleCodeFunctions()
                                                  .getResponseCode(
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

/// End of code
