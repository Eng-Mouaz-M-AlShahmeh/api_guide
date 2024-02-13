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

/// Define [sampleCodeItem] function
DecoratedBox sampleCodeItem(
  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return DecoratedBox(
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
      padding: const EdgeInsets.all(
        Constants.size1,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(Constants.size8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  /// Check the current light/dark theme mode
                  color: themeState.isDarkMode
                      ? Constants.greyColor
                      : Constants.greyColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Constants.size8),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceBetween,
                    spacing: Constants.size10,
                    runSpacing: Constants.size10,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            Constants.arrowDoubleNavIcon,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.themeColorLight(context)
                                : ConstantsLightMode.themeColor(context),
                            size: Constants.size15,
                          ),
                          Text(
                            Constants.sampleCodeTxt,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                              /// Check the current light/dark theme mode
                              color: themeState.isDarkMode
                                  ? ConstantsDarkMode.themeColorLight(context)
                                  : ConstantsLightMode.themeColor(context),
                              fontSize: Constants.size14,
                            ),
                          ),
                        ],
                      ),

                      /// Check if there more than one server
                      appState.apiServerList.length > 1
                          ? serverButton(context)
                          : SizedBox(),
                      sampleCodeButton(context),
                      copyClipboardButton(context, item),
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
            SizedBox(
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Constants.size8),
                    bottomRight: Radius.circular(Constants.size8),
                  ),

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
          ],
        ),
      ),
    ),
  );
}
