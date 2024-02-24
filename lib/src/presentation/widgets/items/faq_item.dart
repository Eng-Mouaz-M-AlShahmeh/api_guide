import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [apiGuideFaqItems] function
Consumer apiGuideFaqItems(
  /// BuildContext
  BuildContext context,
) {
  return Consumer(
    builder: (context, ref, child) {
      /// isDarkModeProvider to check theme attributes' states
      final isDarkMode = ref.watch(isDarkModeProvider);

      return Column(
        children: ref
            .watch(apiFaqsProvider)
            .map(
              (item) => ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(Constants.size8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Constants.size5),

                    InkWell(
                      onTap: () {
                        /// Update the value of [_apiFaqs] item
                        ref
                                .read(apiFaqsProvider.notifier)
                                .state
                                .where((element) => element == item)
                                .first
                                .isExpanded =
                            item.isExpanded == null ? true : !item.isExpanded!;

                        /// Refresh the apiFaqsProvider to make rebuild
                        ref.invalidate(apiFaqsProvider);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            item.isExpanded == true
                                ? Constants.size0
                                : Constants.size8,
                          ),
                        ),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            /// Check the current light/dark theme mode
                            color: isDarkMode
                                ? ConstantsDarkMode.greyLightColor
                                : ConstantsLightMode.greyLightColor,

                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                Constants.size8,
                              ),
                              topRight: Radius.circular(
                                Constants.size8,
                              ),
                            ),
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
                                  Text(
                                    item.question,
                                    style: TextStyle(
                                      color: isDarkMode
                                          ? ConstantsDarkMode.themeColor(ref)
                                          : ConstantsLightMode.themeColor(ref),
                                      fontWeight: FontWeight.bold,
                                      fontSize: Constants.size15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    /// Check if the faq item is expanded
                    item.isExpanded == true
                        ? Divider(
                            height: Constants.size1,
                            thickness: Constants.size1,
                            color: isDarkMode
                                ? ConstantsDarkMode.whiteColor
                                : ConstantsLightMode.whiteColor,
                          )
                        : SizedBox(),

                    /// Check if the faq item is expanded
                    item.isExpanded == true
                        ? SizedBox(
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
                                          ? ConstantsDarkMode.greyLightColor
                                          : ConstantsLightMode.greyLightColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                        Constants.size10,
                                      ),

                                      /// Display the faq answer
                                      child: markdownWidget(
                                        context,
                                        ref,
                                        item.answer,
                                        isDarkMode,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(),

                    /// Check if the faq item is expanded
                    item.isExpanded == true
                        ? SizedBox(
                            height: Constants.size10,
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            )
            .toList(),
      );
    },
  );
}
