import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [apiGuideSearchDialog] function
Dialog apiGuideSearchDialog(
  /// WidgetRef
  WidgetRef ref,

  /// BuildContext
  BuildContext context,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  /// searchKeyProvider to check theme attributes' states
  final searchKey = ref.watch(searchKeyProvider);

  /// searchItemsProvider to check theme attributes' states
  final searchItems = ref.watch(searchItemsProvider);

  /// Define [searchController] attribute
  final TextEditingController searchController =
      TextEditingController(text: searchKey);
  searchController.value = searchController.value.copyWith(
    selection: TextSelection.fromPosition(
      TextPosition(offset: searchKey.length),
    ),
  );

  return Dialog(
    backgroundColor: Colors.transparent,
    child: SizedBox(
      /// Check for screens larger than [Constants.smallBreakPoint]
      width: MediaQuery.of(context).size.width <= Constants.smallBreakPoint
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * Constants.size05,
      child: DecoratedBox(
        decoration: BoxDecoration(
          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.whiteColor
              : ConstantsLightMode.whiteColor,
          borderRadius: BorderRadius.circular(Constants.size8),
        ),
        child: Padding(
          padding: EdgeInsets.all(Constants.size15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Constants.size20,
                    Constants.size10,
                    Constants.size20,
                    Constants.size0,
                  ),
                  child: apiGuideTextFieldSearchDialog(
                    context,
                    ref,
                    searchController,
                  ),
                ),
                Column(
                  children: [
                    /// Check if the search key is empty
                    searchKey != Constants.emptyTxt
                        ? SizedBox()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SelectableText(
                                Constants.noRecentSearchesTxt,
                                style: TextStyle(
                                  fontSize: Constants.size13,

                                  /// Check the current light/dark theme mode
                                  color: isDarkMode
                                      ? ConstantsDarkMode.blackColor
                                      : ConstantsLightMode.blackColor,
                                ),
                              ),
                            ],
                          ),

                    /// Check if the search key is empty
                    searchKey != Constants.emptyTxt
                        ? SizedBox()
                        : SizedBox(height: Constants.size15),

                    /// Check if the search key is not empty and
                    /// the demo list is empty
                    searchKey != Constants.emptyTxt && searchItems.isEmpty
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: SelectableText(
                                  '${Constants.notFoundTxt} ',
                                  style: TextStyle(
                                    fontSize: Constants.size13,

                                    /// Check the current light/dark theme mode
                                    color: isDarkMode
                                        ? ConstantsDarkMode.blackColor
                                        : ConstantsLightMode.blackColor,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: SelectableText(
                                  '"${searchKey}"',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Constants.size13,

                                    /// Check the current light/dark theme mode
                                    color: isDarkMode
                                        ? ConstantsDarkMode.blackColor
                                        : ConstantsLightMode.blackColor,
                                  ),

                                  /// Set to null to allow unlimited lines
                                  maxLines: null,
                                ),
                              ),
                            ],
                          )
                        : SizedBox(),

                    /// Check if the search key is empty
                    searchKey == Constants.emptyTxt
                        ? SizedBox()
                        : SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(Constants.size20),
                              child: Column(
                                children: [
                                  /// Check if the local demo list
                                  /// contains the [introItemListTxt]
                                  searchItems
                                          .contains(Constants.introItemListTxt)
                                      ? animatedSearchContainer(
                                          ref,
                                          ref.watch(isHoveredIntroProvider),
                                          Constants.introTxt,
                                          ref.watch(introTextProvider),
                                          () => NavigationFunctions()
                                              .scrollToIntro(
                                            ref,
                                            true,
                                          ),
                                          (isHovered) {
                                            /// When hover the item
                                            /// toggle the hover state
                                            ref
                                                .read(isHoveredIntroProvider
                                                    .notifier)
                                                .state = isHovered;
                                          },
                                        )
                                      : SizedBox(),

                                  /// Check if the local demo list
                                  /// contains the [introItemListTxt]
                                  searchItems
                                          .contains(Constants.introItemListTxt)
                                      ? SizedBox(height: Constants.size15)
                                      : SizedBox(),

                                  Column(
                                    /// List of API items and their links
                                    children: ref
                                        .watch(apiItemListProvider)
                                        .map((item) => Column(
                                              children: [
                                                /// Check if the item url path
                                                /// exists in the local demo list
                                                searchItems.contains(item
                                                        .urlPath
                                                        .toLowerCase())
                                                    ? animatedSearchContainer(
                                                        ref,
                                                        item.isHovered ?? false,
                                                        item.title,
                                                        item.description,
                                                        () =>
                                                            NavigationFunctions()
                                                                .scrollToAPIItem(
                                                          ref,
                                                          item,
                                                          true,
                                                        ),
                                                        (isHovered) {
                                                          /// Toggle the hover state
                                                          /// when hover the item
                                                          updateAPIItemIsHovered(
                                                              item,
                                                              isHovered,
                                                              ref);
                                                        },
                                                      )
                                                    : SizedBox(),

                                                /// Check if the item url path
                                                /// exists in the local demo list
                                                searchItems.contains(item
                                                        .urlPath
                                                        .toLowerCase())
                                                    ? SizedBox(
                                                        height:
                                                            Constants.size15)
                                                    : SizedBox(),
                                              ],
                                            ))
                                        .toList(),
                                  ),

                                  /// Check if the local demo list contains
                                  /// the [faqsItemListTxt]
                                  searchItems
                                          .contains(Constants.faqsItemListTxt)
                                      ? animatedSearchContainer(
                                          ref,
                                          ref.watch(isHoveredFaqsProvider),
                                          Constants.faqsShortTxt,
                                          ref
                                              .read(apiFaqsProvider)
                                              .firstOrNull!
                                              .question,
                                          () =>
                                              NavigationFunctions().scrollToFaq(
                                            ref,
                                            true,
                                          ),
                                          (isHovered) {
                                            /// When hover the item toggle
                                            /// the hover state

                                            ref
                                                .read(isHoveredFaqsProvider
                                                    .notifier)
                                                .state = isHovered;
                                          },
                                        )
                                      : SizedBox(),

                                  /// Check if the local demo list contains
                                  /// the [faqsItemListTxt]
                                  searchItems
                                          .contains(Constants.faqsItemListTxt)
                                      ? SizedBox(height: Constants.size15)
                                      : SizedBox(),
                                ],
                              ),
                            ),
                          ),
                  ],
                ),
                SizedBox(height: Constants.size10),
                closeSearchDialogButton(ref),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
