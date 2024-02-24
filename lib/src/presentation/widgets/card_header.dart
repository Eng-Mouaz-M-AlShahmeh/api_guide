import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [apiGuideItemHeader] function
SizedBox apiGuideItemHeader(
  /// WidgetRef
  WidgetRef ref,

  /// APIItem
  APIItem item,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  /// List of Request Path Params
  final pathParams = item.request.params
      .where((e) => e.parameterType == ParameterType.path)
      .toList();

  return SizedBox(
    width: double.infinity,
    child: DecoratedBox(
      decoration: BoxDecoration(
        /// Check the current light/dark theme mode
        color: isDarkMode
            ? ConstantsDarkMode.themeColorLight(ref)
            : ConstantsLightMode.themeColorLight(ref),
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
                      color: isDarkMode
                          ? ConstantsDarkMode.themeColor(ref)
                          : ConstantsLightMode.themeColor(ref),
                      size: Constants.size20,
                    ),
                    SelectableText(
                      item.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Constants.size20,

                        /// Check the current light/dark theme mode
                        color: isDarkMode
                            ? ConstantsDarkMode.themeColor(ref)
                            : ConstantsLightMode.themeColor(ref),
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
                            color: isDarkMode
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
                          color: isDarkMode
                              ? ConstantsDarkMode.greyLightColor
                              : ConstantsLightMode.greyLightColor),
                      child: Padding(
                        padding: const EdgeInsets.all(Constants.size5),

                        /// Display the URL
                        child: SelectableText(
                          /// Check pathParams if it is empty
                          pathParams.isEmpty
                              ? '${ref.watch(selectedAPIServerProvider).urlHost}${item.urlPath}'
                              : '${ref.watch(selectedAPIServerProvider).urlHost}${item.urlPath}${pathParams.map((e) => item.urlPath.contains(e.key) ? '' : '/{${e.key}}').join('')}',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size15,

                            /// Check the current light/dark theme mode
                            color: isDarkMode
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
                                      color: isDarkMode
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
                                          color: isDarkMode
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
                                color: isDarkMode
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
                                      color: isDarkMode
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
                                          color: isDarkMode
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
