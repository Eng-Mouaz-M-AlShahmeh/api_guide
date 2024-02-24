import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Request Body Items
Column requestBodyItems(
  /// WidgetRef
  WidgetRef ref,

  /// List from APIGuideRequestBody type
  List<APIGuideRequestBody> list,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return Column(
    children: list
        .map(
          (e) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Constants.arrowNavIcon,

                          /// Check the current light/dark theme mode
                          color: isDarkMode
                              ? ConstantsDarkMode.blackColor
                              : ConstantsLightMode.blackColor,
                          size: Constants.size15,
                        ),
                        SelectableText(
                          e.key,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Constants.size14,

                            /// Check the current light/dark theme mode
                            color: isDarkMode
                                ? ConstantsDarkMode.blackColor
                                : ConstantsLightMode.blackColor,
                          ),
                        ),
                        SelectableText(
                          ' (${e.type.name}) ',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size12,
                            color: Constants.orangeColor,
                          ),
                        ),
                        SelectableText(
                          Constants.lineTxt,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size10,
                            color: Constants.greyColor,
                          ),
                        ),
                      ],
                    ),
                    SelectableText(
                      e.isRequired ? Constants.requiredTxt : Constants.emptyTxt,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: Constants.size10,
                        color: Constants.orangeColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Constants.size10),
              SelectableText(
                e.description,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: Constants.size12,

                  /// Check the current light/dark theme mode
                  color: isDarkMode
                      ? ConstantsDarkMode.blackColor
                      : ConstantsLightMode.blackColor,
                ),
              ),
              SizedBox(height: Constants.size15),
            ],
          ),
        )
        .toList(),
  );
}

/// Request Params Items
Column requestParamsItems(
  WidgetRef ref,
  List<APIGuideParam> list,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return Column(
    children: list
        .map(
          (e) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Constants.arrowNavIcon,

                          /// Check the current light/dark theme mode
                          color: isDarkMode
                              ? ConstantsDarkMode.blackColor
                              : ConstantsLightMode.blackColor,
                          size: Constants.size15,
                        ),
                        SelectableText(
                          e.key,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Constants.size14,

                            /// Check the current light/dark theme mode
                            color: isDarkMode
                                ? ConstantsDarkMode.blackColor
                                : ConstantsLightMode.blackColor,
                          ),
                        ),
                        SelectableText(
                          ' (${e.propertyType.name}) ',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size12,
                            color: Constants.orangeColor,
                          ),
                        ),
                        SelectableText(
                          Constants.lineTxt,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size10,
                            color: Constants.greyColor,
                          ),
                        ),
                      ],
                    ),
                    SelectableText(
                      e.isRequired ? Constants.requiredTxt : Constants.emptyTxt,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: Constants.size10,
                        color: Constants.orangeColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Constants.size10),
              SelectableText(
                e.description ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: Constants.size12,

                  /// Check the current light/dark theme mode
                  color: isDarkMode
                      ? ConstantsDarkMode.blackColor
                      : ConstantsLightMode.blackColor,
                ),
              ),
              SizedBox(height: Constants.size15),
            ],
          ),
        )
        .toList(),
  );
}
