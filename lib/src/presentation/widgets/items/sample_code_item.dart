import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [sampleCodeItem] function
DecoratedBox sampleCodeItem(
  /// WidgetRef
  WidgetRef ref,

  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(Constants.size8),
      border: Border.all(
        color: isDarkMode ? Constants.greyColor! : Constants.greyDarkColor!,
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
                  color: isDarkMode ? Constants.greyColor : Constants.greyColor,
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
                            color: isDarkMode
                                ? ConstantsDarkMode.themeColorLight(ref)
                                : ConstantsLightMode.themeColor(ref),
                            size: Constants.size15,
                          ),
                          Text(
                            Constants.sampleCodeTxt,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                              /// Check the current light/dark theme mode
                              color: isDarkMode
                                  ? ConstantsDarkMode.themeColorLight(ref)
                                  : ConstantsLightMode.themeColor(ref),
                              fontSize: Constants.size14,
                            ),
                          ),
                        ],
                      ),

                      /// Check if there more than one server
                      ref.watch(apiServerListProvider).length > 1
                          ? serverButton(ref)
                          : SizedBox(),
                      sampleCodeButton(ref),
                      copyClipboardButton(ref, context, item),
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
            SizedBox(
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Constants.size8),
                    bottomRight: Radius.circular(Constants.size8),
                  ),

                  /// Check the current light/dark theme mode
                  color: isDarkMode
                      ? Constants.greyDarkColor
                      : Constants.greyDarkColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Constants.size10),

                  /// Make the sample code as selectable text
                  child: SelectableText(
                    SampleCodeFunctions().getFinalSampleCode(ref, item),
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
