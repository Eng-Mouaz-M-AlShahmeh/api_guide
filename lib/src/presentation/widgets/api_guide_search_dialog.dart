/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

class APIGuideSearchDialog extends StatefulWidget {
  const APIGuideSearchDialog({
    /// Construct super key
    super.key,

    /// Theme State Notifier
    required this.themeState,

    /// List of API items
    required this.apiItemsList,

    /// Key for the introduction section
    required this.introKey,

    /// Key for the FAQ section
    required this.faqKey,

    /// List of keys for API items
    required this.apiItemKeys,

    /// Scroll controller for navigation
    required this.scrollController,

    /// String for the introduction text
    required this.introText,

    /// List of FAQs
    required this.apiFaqs,
  });

  /// Theme State Notifier
  final ThemeStateNotifier themeState;

  /// List of API items
  final List<APIItem> apiItemsList;

  /// Key for the introduction section
  final GlobalKey introKey;

  /// String for the introduction text
  final String introText;

  /// List of FAQs
  final List<APIGuideFAQ> apiFaqs;

  /// Key for the FAQ section
  final GlobalKey faqKey;

  /// List of keys for API items
  final List<GlobalKey> apiItemKeys;

  /// Scroll controller
  final ScrollController scrollController;

  @override
  State<APIGuideSearchDialog> createState() => _APIGuideSearchDialogState();
}

class _APIGuideSearchDialogState extends State<APIGuideSearchDialog> {
  /// Define initial [searchState] attribute to be assigned later
  late SearchStateNotifier searchState;

  /// Define local temp list of strings
  List<String> _demoList = [];

  /// Define [_patternIntro] Regular Expression
  RegExp _patternIntro = RegExp(
    Constants.introPattern,
    caseSensitive: false,
  );

  /// Define [_patternFAQs] Regular Expression
  RegExp _patternFAQs = RegExp(
    Constants.faqsPattern,
    caseSensitive: false,
  );

  /// bool [_isHoveredIntro] and assign initial value to false
  bool _isHoveredIntro = false;

  /// bool [_isHoveredFaqs] and assign initial value to false
  bool _isHoveredFaqs = false;

  @override
  initState() {
    super.initState();

    /// SearchNotifierProvider to check search attributes' states
    searchState =
        SearchNotifierProvider.of(context, listen: false).searchStateNotifier;

    /// Empty the [_searchItems] List when open the widget
    searchState.updateSearchItems([]);
  }

  @override
  Widget build(BuildContext context) {
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
            color: widget.themeState.isDarkMode
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
                    padding: const EdgeInsets.all(Constants.size20),
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(
                        fontSize: Constants.size15,

                        /// Check the current light/dark theme mode
                        color: widget.themeState.isDarkMode
                            ? ConstantsDarkMode.blackColor
                            : ConstantsLightMode.blackColor,
                      ),
                      controller: searchController,
                      onChanged: (val) {
                        /// Empty the local demo list
                        _demoList = [];

                        /// Update the search key value
                        searchState.updateSearchKey(val);

                        /// Update the search controller value
                        searchController.text = val;

                        /// Check if [_patternIntro] match the search key
                        if (_patternIntro.hasMatch(val)) {
                          /// Add introItemListTxt to
                          /// the demo list to compare later
                          _demoList.add(Constants.introItemListTxt);
                        }

                        /// Check if [_patternFAQs] match the search key
                        if (_patternFAQs.hasMatch(val)) {
                          /// Add faqsItemListTxt to
                          /// the demo list to compare later
                          _demoList.add(Constants.faqsItemListTxt);
                        }

                        /// Make loop over apiItemsList
                        widget.apiItemsList.forEach((element) {
                          /// Check if the element url path or element title
                          /// match the search key with lower case
                          /// to both to make insensitive case
                          if (element.urlPath
                                  .toLowerCase()
                                  .contains(val.toLowerCase()) ||
                              element.title
                                  .toLowerCase()
                                  .contains(val.toLowerCase())) {
                            /// Add element urlPath to
                            /// the demo list to compare later
                            _demoList.add(element.urlPath.toLowerCase());
                          }
                        });

                        /// Notify widgets by changes
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        /// Check the current light/dark theme mode
                        suffixIconColor: widget.themeState.isDarkMode
                            ? ConstantsDarkMode.indigoColor
                            : ConstantsLightMode.indigoColor,
                        suffixIcon: searchState.searchKey == Constants.emptyTxt
                            ? SizedBox()
                            : InkWell(
                                onTap: () {
                                  /// Update the search key by
                                  /// empty text value when pressed
                                  /// the clear icon
                                  searchState
                                      .updateSearchKey(Constants.emptyTxt);

                                  /// Update the search controller by
                                  /// empty text value when pressed
                                  /// the clear icon
                                  searchController.text = Constants.emptyTxt;

                                  /// Notify widgets by changes
                                  setState(() {});
                                },
                                child: Icon(Constants.clearIcon),
                              ),
                        hintText: Constants.searchHintTxt,
                        hintStyle: TextStyle(
                          fontSize: Constants.size15,

                          /// Check the current light/dark theme mode
                          color: widget.themeState.isDarkMode
                              ? ConstantsDarkMode.blackColor
                              : ConstantsLightMode.blackColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Constants.size10),
                          borderSide: BorderSide(
                            /// Check the current light/dark theme mode
                            color: widget.themeState.isDarkMode
                                ? ConstantsDarkMode.blackColor
                                : ConstantsLightMode.blackColor,
                            width: Constants.size1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Constants.size10),
                          borderSide: BorderSide(
                            /// Check the current light/dark theme mode
                            color: widget.themeState.isDarkMode
                                ? ConstantsDarkMode.blackColor
                                : ConstantsLightMode.blackColor,
                            width: Constants.size1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Constants.size10),
                          borderSide: BorderSide(
                            /// Check the current light/dark theme mode
                            color: widget.themeState.isDarkMode
                                ? ConstantsDarkMode.indigoColor!
                                : ConstantsLightMode.indigoColor!,
                            width: Constants.size2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
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
                                      color: widget.themeState.isDarkMode
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
                                _demoList.isEmpty
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: SelectableText(
                                      '${Constants.notFoundTxt} ',
                                      style: TextStyle(
                                        fontSize: Constants.size13,

                                        /// Check the current light/dark theme mode
                                        color: widget.themeState.isDarkMode
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
                                        color: widget.themeState.isDarkMode
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
                                  padding:
                                      const EdgeInsets.all(Constants.size20),
                                  child: Column(
                                    children: [
                                      /// Check if the local demo list
                                      /// contains the [introItemListTxt]
                                      _demoList.contains(
                                              Constants.introItemListTxt)
                                          ? InkWell(
                                              /// Introduction section link
                                              onHover: (isHovered) {
                                                /// When hover the item
                                                /// toggle the hover state
                                                setState(() {
                                                  _isHoveredIntro = isHovered;
                                                });
                                              },
                                              onTap: () => NavigationFunctions()
                                                  .scrollToIntro(
                                                context,
                                                widget.introKey,
                                                widget.scrollController,
                                                true,
                                              ),
                                              child: AnimatedContainer(
                                                duration: Duration(
                                                  milliseconds:
                                                      Constants.duration300,
                                                ),
                                                padding: EdgeInsets.all(
                                                    Constants.size15),
                                                decoration: BoxDecoration(
                                                  /// Check the current light/dark
                                                  /// theme mode and hover state
                                                  color: _isHoveredIntro
                                                      ? widget.themeState
                                                              .isDarkMode
                                                          ? ConstantsDarkMode
                                                              .indigoLightColor
                                                          : ConstantsLightMode
                                                              .indigoLightColor
                                                      : widget.themeState
                                                              .isDarkMode
                                                          ? ConstantsDarkMode
                                                              .whiteColor
                                                          : ConstantsLightMode
                                                              .whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Constants.size5,
                                                  ),
                                                  border: Border.all(
                                                    /// Check the current light/dark
                                                    /// theme mode
                                                    color: widget.themeState
                                                            .isDarkMode
                                                        ? ConstantsDarkMode
                                                            .indigoColor!
                                                        : ConstantsLightMode
                                                            .indigoColor!,
                                                    width: Constants.size1,
                                                  ),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Constants
                                                              .arrowDoubleNavIcon,

                                                          /// Check the current
                                                          /// light/dark theme mode
                                                          color: widget
                                                                  .themeState
                                                                  .isDarkMode
                                                              ? ConstantsDarkMode
                                                                  .indigoColor
                                                              : ConstantsLightMode
                                                                  .indigoColor,
                                                          size:
                                                              Constants.size15,
                                                        ),
                                                        SelectableText(
                                                          Constants.introTxt,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,

                                                            /// Check the current
                                                            /// light/dark theme mode
                                                            color: widget
                                                                    .themeState
                                                                    .isDarkMode
                                                                ? ConstantsDarkMode
                                                                    .indigoColor
                                                                : ConstantsLightMode
                                                                    .indigoColor,
                                                            fontSize: Constants
                                                                .size15,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SelectableText(
                                                          /// Check if the text is over
                                                          /// the fixed length to make
                                                          /// the pretty trim
                                                          widget.introText
                                                                      .length >
                                                                  Constants
                                                                      .size50
                                                              ? widget.introText.substring(
                                                                      Constants
                                                                          .size0
                                                                          .toInt(),
                                                                      Constants
                                                                          .size50
                                                                          .toInt()) +
                                                                  Constants
                                                                      .restTxt
                                                              : widget
                                                                  .introText,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,

                                                            /// Check the current light/dark theme mode
                                                            color: Constants
                                                                .greyColor,
                                                            fontSize: Constants
                                                                .size10,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          : SizedBox(),

                                      /// Check if the local demo list
                                      /// contains the [introItemListTxt]
                                      _demoList.contains(
                                              Constants.introItemListTxt)
                                          ? SizedBox(height: Constants.size15)
                                          : SizedBox(),

                                      Column(
                                        /// List of API items and their links
                                        children: widget.apiItemsList
                                            .map((item) => Column(
                                                  children: [
                                                    /// Check if the item url path
                                                    /// exists in the local demo list
                                                    _demoList.contains(item
                                                            .urlPath
                                                            .toLowerCase())
                                                        ? InkWell(
                                                            onHover:
                                                                (isHovered) {
                                                              /// Toggle the hover state
                                                              /// when hover the item
                                                              setState(() {
                                                                item.isHovered =
                                                                    isHovered;
                                                              });
                                                            },
                                                            onTap: () =>
                                                                NavigationFunctions()
                                                                    .scrollToAPIItem(
                                                              context,
                                                              widget
                                                                  .scrollController,
                                                              widget.apiItemKeys
                                                                  .firstWhere(
                                                                (element) => element
                                                                    .toString()
                                                                    .contains(item
                                                                        .title),
                                                              ),
                                                              true,
                                                            ),
                                                            child:
                                                                AnimatedContainer(
                                                              duration:
                                                                  Duration(
                                                                milliseconds:
                                                                    Constants
                                                                        .duration300,
                                                              ),
                                                              padding: EdgeInsets
                                                                  .all(Constants
                                                                      .size15),
                                                              decoration:
                                                                  BoxDecoration(
                                                                /// Check the current light/dark
                                                                /// theme mode and hover state
                                                                color: item.isHovered !=
                                                                            null &&
                                                                        item.isHovered ==
                                                                            true
                                                                    ? widget.themeState
                                                                            .isDarkMode
                                                                        ? ConstantsDarkMode
                                                                            .indigoLightColor
                                                                        : ConstantsLightMode
                                                                            .indigoLightColor
                                                                    : widget.themeState
                                                                            .isDarkMode
                                                                        ? ConstantsDarkMode
                                                                            .whiteColor
                                                                        : ConstantsLightMode
                                                                            .whiteColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  Constants
                                                                      .size5,
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  /// Check the current light/dark theme mode
                                                                  color: widget
                                                                          .themeState
                                                                          .isDarkMode
                                                                      ? ConstantsDarkMode
                                                                          .indigoColor!
                                                                      : ConstantsLightMode
                                                                          .indigoColor!,
                                                                  width:
                                                                      Constants
                                                                          .size1,
                                                                ),
                                                              ),
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          Icon(
                                                                            Constants.arrowDoubleNavIcon,

                                                                            /// Check the current light/dark theme mode
                                                                            color: widget.themeState.isDarkMode
                                                                                ? ConstantsDarkMode.indigoColor
                                                                                : ConstantsLightMode.indigoColor,
                                                                            size:
                                                                                Constants.size15,
                                                                          ),
                                                                          SelectableText(
                                                                            item.title,
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,

                                                                              /// Check the current light/dark theme mode
                                                                              color: widget.themeState.isDarkMode ? ConstantsDarkMode.indigoColor : ConstantsLightMode.indigoColor,
                                                                              fontSize: Constants.size15,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              Constants.size30),
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.all(
                                                                          Radius.circular(
                                                                              Constants.size10),
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          child:
                                                                              DecoratedBox(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Constants.getMethodColor(
                                                                                item.request.method.name,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.fromLTRB(
                                                                                Constants.size10,
                                                                                Constants.size5,
                                                                                Constants.size10,
                                                                                Constants.size5,
                                                                              ),
                                                                              child: SelectableText(
                                                                                item.request.method.name,
                                                                                style: TextStyle(
                                                                                  /// Check the current light/dark theme mode
                                                                                  color: widget.themeState.isDarkMode ? ConstantsDarkMode.whiteColor : ConstantsLightMode.whiteColor,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontSize: Constants.size10,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      SelectableText(
                                                                        /// Check if the text is over
                                                                        /// than the fixed length
                                                                        /// then make pretty trim to it
                                                                        item.description.length > Constants.size50
                                                                            ? item.description.substring(Constants.size0.toInt(), Constants.size50.toInt()) +
                                                                                Constants.restTxt
                                                                            : item.description,
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.normal,

                                                                          /// Check the current
                                                                          /// light/dark theme mode
                                                                          color:
                                                                              Constants.greyColor,
                                                                          fontSize:
                                                                              Constants.size10,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : SizedBox(),

                                                    /// Check if the item url path
                                                    /// exists in the local demo list
                                                    _demoList.contains(item
                                                            .urlPath
                                                            .toLowerCase())
                                                        ? SizedBox(
                                                            height: Constants
                                                                .size15)
                                                        : SizedBox(),
                                                  ],
                                                ))
                                            .toList(),
                                      ),

                                      /// Check if the local demo list contains
                                      /// the [faqsItemListTxt]
                                      _demoList.contains(
                                              Constants.faqsItemListTxt)
                                          ? InkWell(
                                              /// FAQ section link
                                              onHover: (isHovered) {
                                                /// When hover the item toggle
                                                /// the hover state
                                                setState(() {
                                                  _isHoveredFaqs = isHovered;
                                                });
                                              },
                                              onTap: () => NavigationFunctions()
                                                  .scrollToFaq(
                                                context,
                                                widget.faqKey,
                                                widget.scrollController,
                                                true,
                                              ),
                                              child: AnimatedContainer(
                                                duration: Duration(
                                                  milliseconds:
                                                      Constants.duration300,
                                                ),
                                                padding: EdgeInsets.all(
                                                    Constants.size15),
                                                decoration: BoxDecoration(
                                                  /// Check the current light/dark theme mode
                                                  color: _isHoveredFaqs
                                                      ? widget.themeState
                                                              .isDarkMode
                                                          ? ConstantsDarkMode
                                                              .indigoLightColor
                                                          : ConstantsLightMode
                                                              .indigoLightColor
                                                      : widget.themeState
                                                              .isDarkMode
                                                          ? ConstantsDarkMode
                                                              .whiteColor
                                                          : ConstantsLightMode
                                                              .whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Constants.size5,
                                                  ),
                                                  border: Border.all(
                                                    /// Check the current
                                                    /// light/dark theme mode
                                                    color: widget.themeState
                                                            .isDarkMode
                                                        ? ConstantsDarkMode
                                                            .indigoColor!
                                                        : ConstantsLightMode
                                                            .indigoColor!,
                                                    width: Constants.size1,
                                                  ),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Constants
                                                              .arrowDoubleNavIcon,

                                                          /// Check the current
                                                          /// light/dark theme mode
                                                          color: widget
                                                                  .themeState
                                                                  .isDarkMode
                                                              ? ConstantsDarkMode
                                                                  .indigoColor
                                                              : ConstantsLightMode
                                                                  .indigoColor,
                                                          size:
                                                              Constants.size15,
                                                        ),
                                                        SelectableText(
                                                          Constants
                                                              .faqsShortTxt,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,

                                                            /// Check the current
                                                            /// light/dark theme mode
                                                            color: widget
                                                                    .themeState
                                                                    .isDarkMode
                                                                ? ConstantsDarkMode
                                                                    .indigoColor
                                                                : ConstantsLightMode
                                                                    .indigoColor,
                                                            fontSize: Constants
                                                                .size15,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SelectableText(
                                                          /// Check if the text is over
                                                          /// than the fixed length
                                                          /// then make pretty trim to it
                                                          widget
                                                                      .apiFaqs
                                                                      .firstOrNull!
                                                                      .question
                                                                      .length >
                                                                  Constants
                                                                      .size50
                                                              ? widget
                                                                      .apiFaqs
                                                                      .firstOrNull!
                                                                      .question
                                                                      .substring(
                                                                          Constants
                                                                              .size0
                                                                              .toInt(),
                                                                          Constants
                                                                              .size50
                                                                              .toInt()) +
                                                                  Constants
                                                                      .restTxt
                                                              : widget
                                                                  .apiFaqs
                                                                  .firstOrNull!
                                                                  .question,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,

                                                            /// Check the current light/dark theme mode
                                                            color: Constants
                                                                .greyColor,
                                                            fontSize: Constants
                                                                .size10,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          : SizedBox(),

                                      /// Check if the local demo list contains
                                      /// the [faqsItemListTxt]
                                      _demoList.contains(
                                              Constants.faqsItemListTxt)
                                          ? SizedBox(height: Constants.size15)
                                          : SizedBox(),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(height: Constants.size15),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        /// Check the current light/dark theme mode
                        widget.themeState.isDarkMode
                            ? ConstantsDarkMode.indigoColor
                            : ConstantsLightMode.indigoColor,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        /// Check the current light/dark theme mode
                        widget.themeState.isDarkMode
                            ? ConstantsDarkMode.whiteColor
                            : ConstantsLightMode.whiteColor,
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: Constants.size10,

                          /// Check the current light/dark theme mode
                          color: widget.themeState.isDarkMode
                              ? ConstantsDarkMode.greyLightColor
                              : ConstantsLightMode.greyLightColor,
                        ),
                      ),
                    ),
                    onPressed: () {
                      /// Toggle the [_isOpened] state
                      searchState.toggleIsOpen(false);

                      /// Call the function to close the dialog
                      Navigator.of(context).pop();
                    },
                    child: Text(Constants.closeTxt),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
