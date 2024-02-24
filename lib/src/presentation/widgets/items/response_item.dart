import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [responseItem] function
Padding responseItem(
  /// WidgetRef
  WidgetRef ref,

  /// APIGuideResponse
  APIGuideResponse itemResponse,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

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
          color: isDarkMode ? Constants.greyColor! : Constants.greyDarkColor!,
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
                  color: isDarkMode
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
                          color: isDarkMode
                              ? ConstantsDarkMode.themeColor(ref)
                              : ConstantsLightMode.themeColor(ref),
                          size: Constants.size15,
                        ),
                        SelectableText(
                          itemResponse.statusCode.statusTitle,
                          style: TextStyle(
                            color: isDarkMode
                                ? ConstantsDarkMode.themeColor(ref)
                                : ConstantsLightMode.themeColor(ref),
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
                                    color: isDarkMode
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
                color: isDarkMode
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
                                color: isDarkMode
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
