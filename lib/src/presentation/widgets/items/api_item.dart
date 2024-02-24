import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [apiGuideAPIItems] function
Column apiGuideAPIItems(
  /// BuildContext
  BuildContext context,

  /// WidgetRef
  WidgetRef ref,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return Column(
    children:

        /// Generate UI for each API item
        ref.watch(apiItemListProvider).map((item) {
      return Padding(
        /// Use a unique key for the API item
        key: ref.watch(apiItemKeysProvider).firstWhere((element) => element
            .toString()
            .contains('${item.urlPath} ${item.request.method.name}')),
        padding: const EdgeInsets.symmetric(vertical: Constants.size15),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(Constants.size15)),
          child: SizedBox(
            child: DecoratedBox(
              decoration: BoxDecoration(
                /// Check the current light/dark theme mode
                color: isDarkMode
                    ? ConstantsDarkMode.greyLightColor
                    : ConstantsLightMode.greyLightColor,
              ),
              child: Column(
                children: [
                  /// API item header
                  apiGuideItemHeader(ref, item),
                  Padding(
                    padding: const EdgeInsets.all(Constants.size15),
                    child: Column(
                      children: [
                        MediaQuery.of(context).size.width <=
                                Constants.smallBreakPoint
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  apiGuideItemBodyStart(ref, context, item),
                                  SizedBox(height: Constants.size15),
                                  apiGuideItemBodyEnd(ref, context, item),
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
                                    child: apiGuideItemBodyStart(
                                        ref, context, item),
                                  ),
                                  SizedBox(width: Constants.size50),
                                  Flexible(
                                    flex: MediaQuery.of(context).size.width <=
                                            Constants.smallBreakPoint
                                        ? Constants.flex8
                                        : Constants.flex3,
                                    child:
                                        apiGuideItemBodyEnd(ref, context, item),
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
