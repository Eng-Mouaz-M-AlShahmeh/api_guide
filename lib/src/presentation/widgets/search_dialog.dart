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

/// Define [apiGuideSearchDialog] function
Dialog apiGuideSearchDialog(
  /// BuildContext
  BuildContext context,
) {
  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// SearchNotifierProvider to check theme attributes' states
  final searchState = context.read<SearchProvider>();

  /// Define [searchController] attribute
  final TextEditingController searchController =
      TextEditingController(text: searchState.searchKey);
  searchController.value = searchController.value.copyWith(
    selection: TextSelection.fromPosition(
      TextPosition(offset: searchState.searchKey.length),
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
          color: themeState.isDarkMode
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
                    searchController,
                  ),
                ),
                Column(
                  children: [
                    /// Check if the search key is empty
                    searchState.searchKey != Constants.emptyTxt
                        ? SizedBox()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SelectableText(
                                Constants.noRecentSearchesTxt,
                                style: TextStyle(
                                  fontSize: Constants.size13,

                                  /// Check the current light/dark theme mode
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.blackColor
                                      : ConstantsLightMode.blackColor,
                                ),
                              ),
                            ],
                          ),

                    /// Check if the search key is empty
                    searchState.searchKey != Constants.emptyTxt
                        ? SizedBox()
                        : SizedBox(height: Constants.size15),

                    /// Check if the search key is not empty and
                    /// the demo list is empty
                    searchState.searchKey != Constants.emptyTxt &&
                            searchState.searchItems.isEmpty
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: SelectableText(
                                  '${Constants.notFoundTxt} ',
                                  style: TextStyle(
                                    fontSize: Constants.size13,

                                    /// Check the current light/dark theme mode
                                    color: themeState.isDarkMode
                                        ? ConstantsDarkMode.blackColor
                                        : ConstantsLightMode.blackColor,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: SelectableText(
                                  '"${searchState.searchKey}"',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Constants.size13,

                                    /// Check the current light/dark theme mode
                                    color: themeState.isDarkMode
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
                    searchState.searchKey == Constants.emptyTxt
                        ? SizedBox()
                        : SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(Constants.size20),
                              child: Column(
                                children: [
                                  /// Check if the local demo list
                                  /// contains the [introItemListTxt]
                                  searchState.searchItems
                                          .contains(Constants.introItemListTxt)
                                      ? animatedSearchContainer(
                                          context,
                                          searchState.isHoveredIntro,
                                          Constants.introTxt,
                                          appState.introText,
                                          () => NavigationFunctions()
                                              .scrollToIntro(
                                            context,
                                            true,
                                          ),
                                          (isHovered) {
                                            /// When hover the item
                                            /// toggle the hover state
                                            searchState.updateIsHoveredIntro(
                                                isHovered);
                                          },
                                        )
                                      : SizedBox(),

                                  /// Check if the local demo list
                                  /// contains the [introItemListTxt]
                                  searchState.searchItems
                                          .contains(Constants.introItemListTxt)
                                      ? SizedBox(height: Constants.size15)
                                      : SizedBox(),

                                  Column(
                                    /// List of API items and their links
                                    children: appState.apiItemList
                                        .map((item) => Column(
                                              children: [
                                                /// Check if the item url path
                                                /// exists in the local demo list
                                                searchState.searchItems
                                                        .contains(item.urlPath
                                                            .toLowerCase())
                                                    ? animatedSearchContainer(
                                                        context,
                                                        item.isHovered ?? false,
                                                        item.title,
                                                        item.description,
                                                        () =>
                                                            NavigationFunctions()
                                                                .scrollToAPIItem(
                                                          context,
                                                          item,
                                                          true,
                                                        ),
                                                        (isHovered) {
                                                          /// Toggle the hover state
                                                          /// when hover the item
                                                          appState
                                                              .updateAPIItemIsHovered(
                                                                  item,
                                                                  isHovered);

                                                          // notify listeners
                                                        },
                                                      )
                                                    : SizedBox(),

                                                /// Check if the item url path
                                                /// exists in the local demo list
                                                searchState.searchItems
                                                        .contains(item.urlPath
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
                                  searchState.searchItems
                                          .contains(Constants.faqsItemListTxt)
                                      ? animatedSearchContainer(
                                          context,
                                          searchState.isHoveredFaqs,
                                          Constants.faqsShortTxt,
                                          appState
                                              .apiFaqs.firstOrNull!.question,
                                          () =>
                                              NavigationFunctions().scrollToFaq(
                                            context,
                                            true,
                                          ),
                                          (isHovered) {
                                            /// When hover the item toggle
                                            /// the hover state
                                            searchState
                                                .updateIsHoveredFaqs(isHovered);
                                          },
                                        )
                                      : SizedBox(),

                                  /// Check if the local demo list contains
                                  /// the [faqsItemListTxt]
                                  searchState.searchItems
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
                closeSearchDialogButton(context),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
