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

Column apiGuideAPIItems(BuildContext context) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return Column(
    children:

        /// Generate UI for each API item
        appState.apiItemList.map((item) {
      return Padding(
        /// Use a unique key for the API item
        key: appState.apiItemKeys
            .firstWhere((element) => element.toString().contains(item.title)),
        padding: const EdgeInsets.symmetric(vertical: Constants.size15),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(Constants.size15)),
          child: SizedBox(
            child: DecoratedBox(
              decoration: BoxDecoration(
                /// Check the current light/dark theme mode
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.greyLightColor
                    : ConstantsLightMode.greyLightColor,
              ),
              child: Column(
                children: [
                  /// API item header
                  apiGuideItemHeader(context, item),
                  Padding(
                    padding: const EdgeInsets.all(Constants.size15),
                    child: Column(
                      children: [
                        MediaQuery.of(context).size.width <=
                                Constants.smallBreakPoint
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  apiGuideItemBodyStart(context, item),
                                  SizedBox(height: Constants.size15),
                                  apiGuideItemBodyEnd(context, item),
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: MediaQuery.of(context).size.width <=
                                            Constants.smallBreakPoint
                                        ? Constants.flex8
                                        : Constants.flex5,
                                    child: apiGuideItemBodyStart(context, item),
                                  ),
                                  SizedBox(width: Constants.size50),
                                  Flexible(
                                    flex: MediaQuery.of(context).size.width <=
                                            Constants.smallBreakPoint
                                        ? Constants.flex8
                                        : Constants.flex3,
                                    child: apiGuideItemBodyEnd(context, item),
                                  ),
                                ],
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
    }).toList(),
  );
}

/// End of code
