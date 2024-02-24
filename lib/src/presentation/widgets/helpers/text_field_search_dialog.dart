import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [apiGuideTextFieldSearchDialog] function
TextField apiGuideTextFieldSearchDialog(
  /// BuildContext
  BuildContext context,

  /// WidgetRef
  WidgetRef ref,

  /// TextEditingController
  TextEditingController searchController,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  /// Define [_patternIntro] Regular Expression
  RegExp _patternIntro = RegExp(
    /// The source String
    Constants.introPattern,

    /// bool value of caseSensitive
    caseSensitive: false,
  );

  /// Define [_patternFAQs] Regular Expression
  RegExp _patternFAQs = RegExp(
    /// The source String
    Constants.faqsPattern,

    /// bool value of caseSensitive
    caseSensitive: false,
  );

  return TextField(
    /// Make the [TextField] as an autofocus
    /// to true to directly write the search query
    autofocus: true,
    style: TextStyle(
      fontSize: Constants.size15,

      /// Check the current light/dark theme mode
      color: isDarkMode
          ? ConstantsDarkMode.blackColor
          : ConstantsLightMode.blackColor,
    ),
    controller: searchController,
    onChanged: (val) {
      /// Empty the local demo list
      updateSearchItems([], ref);

      /// Reset the isOpened state
      ref.read(searchKeyProvider.notifier).state = val;

      /// Update the search controller value
      searchController.text = val;

      /// Check if intro is empty
      if (ref.watch(introTextProvider) != Constants.emptyTxt) {
        /// Check if [_patternIntro] match the search key
        if (_patternIntro.hasMatch(val)) {
          /// Add introItemListTxt to
          /// the demo list to compare later
          addToSearchItems(Constants.introItemListTxt, ref);
        }
      }

      /// Check if faqs is empty
      if (ref.watch(apiFaqsProvider).isNotEmpty) {
        /// Check if [_patternFAQs] match the search key
        if (_patternFAQs.hasMatch(val)) {
          /// Add faqsItemListTxt to
          /// the demo list to compare later
          addToSearchItems(Constants.faqsItemListTxt, ref);
        }
      }

      /// Check if faqs is empty
      if (ref.watch(apiItemListProvider).isNotEmpty) {
        /// Make loop over apiItemsList
        ref.watch(apiItemListProvider).forEach((element) {
          /// Check if the element url path or element title
          /// match the search key with lower case
          /// to both to make insensitive case
          if (element.urlPath.toLowerCase().contains(val.toLowerCase()) ||
              element.title.toLowerCase().contains(val.toLowerCase())) {
            /// Add element urlPath to
            /// the demo list to compare later
            addToSearchItems(element.urlPath.toLowerCase(), ref);
          }
        });
      }
    },
    decoration: InputDecoration(
      /// Check the current light/dark theme mode
      suffixIconColor: isDarkMode
          ? ConstantsDarkMode.themeColor(ref)
          : ConstantsLightMode.themeColor(ref),
      suffixIcon: ref.read(searchKeyProvider) == Constants.emptyTxt
          ? SizedBox()
          : InkWell(
              onTap: () {
                /// Update the search key by
                /// empty text value when pressed
                /// the clear icon
                ref.read(searchKeyProvider.notifier).state = Constants.emptyTxt;

                /// Update the search controller by
                /// empty text value when pressed
                /// the clear icon
                searchController.text = Constants.emptyTxt;
              },
              child: Icon(Constants.clearIcon),
            ),
      hintText: Constants.searchHintTxt,
      hintStyle: TextStyle(
        fontSize: Constants.size15,

        /// Check the current light/dark theme mode
        color: isDarkMode
            ? ConstantsDarkMode.blackColor
            : ConstantsLightMode.blackColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Constants.size10),
        borderSide: BorderSide(
          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
          width: Constants.size1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Constants.size10),
        borderSide: BorderSide(
          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
          width: Constants.size1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Constants.size10),
        borderSide: BorderSide(
          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.themeColor(ref)!
              : ConstantsLightMode.themeColor(ref)!,
          width: Constants.size2,
        ),
      ),
    ),
  );
}
