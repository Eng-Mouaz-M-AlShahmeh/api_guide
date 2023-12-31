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

/// Define [apiGuideItemHeader] function
SizedBox apiGuideItemHeader(
  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  /// List of Request Path Params
  final pathParams = item.request.params
      .where((e) => e.parameterType == ParameterType.path)
      .toList();

  return SizedBox(
    width: double.infinity,
    child: DecoratedBox(
      decoration: BoxDecoration(
        /// Check the current light/dark theme mode
        color: themeState.isDarkMode
            ? ConstantsDarkMode.themeColorLight(context)
            : ConstantsLightMode.themeColorLight(context),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Constants.size15),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: Constants.size15,
          runSpacing: Constants.size15,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: Constants.size15,
              runSpacing: Constants.size15,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Constants.arrowDoubleNavIcon,

                      /// Check the current light/dark theme mode
                      color: themeState.isDarkMode
                          ? ConstantsDarkMode.themeColor(context)
                          : ConstantsLightMode.themeColor(context),
                      size: Constants.size20,
                    ),
                    SelectableText(
                      item.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Constants.size20,

                        /// Check the current light/dark theme mode
                        color: themeState.isDarkMode
                            ? ConstantsDarkMode.themeColor(context)
                            : ConstantsLightMode.themeColor(context),
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(Constants.size10)),
                  child: SizedBox(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:
                            Constants.getMethodColor(item.request.method.name),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Constants.size10,
                          Constants.size5,
                          Constants.size10,
                          Constants.size5,
                        ),
                        child: Text(
                          item.request.method.name,
                          style: TextStyle(
                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.whiteColor
                                : ConstantsLightMode.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: Constants.size13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(Constants.size5)),
                  child: SizedBox(
                    child: DecoratedBox(
                      decoration: BoxDecoration(

                          /// Check the current light/dark theme mode
                          color: themeState.isDarkMode
                              ? ConstantsDarkMode.greyLightColor
                              : ConstantsLightMode.greyLightColor),
                      child: Padding(
                        padding: const EdgeInsets.all(Constants.size5),

                        /// Display the URL
                        child: SelectableText(
                          /// Check pathParams if it is empty
                          pathParams.isEmpty
                              ? '${appState.selectedAPIServer.urlHost}${item.urlPath}'
                              : '${appState.selectedAPIServer.urlHost}${item.urlPath}${pathParams.map((e) => item.urlPath.contains(e.key) ? '' : '/{${e.key}}').join('')}',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size15,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.blackColor
                                : ConstantsLightMode.blackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              spacing: Constants.size15,
              runSpacing: Constants.size15,
              children: [
                /// Check if the api item is deprecated or not
                item.isDeprecated == true
                    ? Tooltip(
                        message: Constants.deprecatedTooltipTxt,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                              Radius.circular(Constants.size10)),
                          child: SizedBox(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Constants.orangeColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  Constants.size10,
                                  Constants.size5,
                                  Constants.size10,
                                  Constants.size5,
                                ),
                                child: Wrap(
                                  spacing: Constants.size5,
                                  children: [
                                    Icon(
                                      Constants.errorIcon,
                                      color: themeState.isDarkMode
                                          ? ConstantsDarkMode.whiteColor
                                          : ConstantsLightMode.whiteColor,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        Constants.size0,
                                        Constants.size2,
                                        Constants.size0,
                                        Constants.size2,
                                      ),
                                      child: Text(
                                        Constants.deprecatedTxt,
                                        style: TextStyle(
                                          /// Check the current light/dark theme mode
                                          color: themeState.isDarkMode
                                              ? ConstantsDarkMode.whiteColor
                                              : ConstantsLightMode.whiteColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: Constants.size13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),

                /// Check if the api item is internal or not
                item.isInternal == true
                    ? Tooltip(
                        message: Constants.internalTooltipTxt,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                              Radius.circular(Constants.size10)),
                          child: SizedBox(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: themeState.isDarkMode
                                    ? ConstantsDarkMode.greyLightColor
                                    : ConstantsLightMode.greyLightColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  Constants.size10,
                                  Constants.size5,
                                  Constants.size10,
                                  Constants.size5,
                                ),
                                child: Wrap(
                                  spacing: Constants.size5,
                                  children: [
                                    Icon(
                                      Constants.eyeIcon,
                                      color: themeState.isDarkMode
                                          ? ConstantsDarkMode.blackColor
                                          : ConstantsLightMode.blackColor,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        Constants.size0,
                                        Constants.size2,
                                        Constants.size0,
                                        Constants.size2,
                                      ),
                                      child: Text(
                                        Constants.internalTxt,
                                        style: TextStyle(
                                          /// Check the current light/dark theme mode
                                          color: themeState.isDarkMode
                                              ? ConstantsDarkMode.blackColor
                                              : ConstantsLightMode.blackColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: Constants.size13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
