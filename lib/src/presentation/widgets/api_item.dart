/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideAPIItems extends StatefulWidget {
  const APIGuideAPIItems({
    /// Super key for widget
    super.key,

    /// List of API items
    required this.apiItemsList,

    /// List of global keys for API items
    required this.apiItemKeys,

    /// Scroll controller
    required this.scrollController,

    /// Host URL
    required this.urlHost,
  });

  /// Host URL
  final String urlHost;

  /// List of API items
  final List<APIItem> apiItemsList;

  /// List of global keys for API items
  final List<GlobalKey> apiItemKeys;

  /// Scroll controller
  final ScrollController scrollController;

  @override
  State<APIGuideAPIItems> createState() => _APIGuideAPIItemsState();
}

class _APIGuideAPIItemsState extends State<APIGuideAPIItems> {
  @override
  Widget build(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes state
    final themeState = ThemeNotifierProvider.of(context).themeStateNotifier;
    return SingleChildScrollView(
      /// Scroll controller for the API items
      controller: widget.scrollController,
      child: SizedBox(
        child: Column(
          children:

              /// Generate UI for each API item
              widget.apiItemsList.map((item) {
            return Padding(
              /// Use a unique key for the API item
              key: widget.apiItemKeys.firstWhere(
                  (element) => element.toString().contains(item.title)),
              padding: const EdgeInsets.symmetric(vertical: Constants.size15),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.size15)),
                child: SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      /// Check the current light/dark theme mode
                      color: themeState.isDarkMode
                          ? ConstantsDarkMode.greyLightColor
                          : ConstantsLightMode.greyLightColor,
                    ),
                    child: Column(
                      children: [
                        /// API item header
                        APIGuideItemHeader(
                          item: item,
                          urlHost: widget.urlHost,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(Constants.size15),
                          child: Column(
                            children: [
                              MediaQuery.of(context).size.width <=
                                      Constants.smallBreakPoint
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        APIGuideItemBodyStart(item: item),
                                        SizedBox(height: Constants.size15),
                                        APIGuideItemBodyEnd(
                                          item: item,
                                          urlHost: widget.urlHost,
                                        ),
                                      ],
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          flex: MediaQuery.of(context)
                                                      .size
                                                      .width <=
                                                  Constants.smallBreakPoint
                                              ? Constants.flex8
                                              : Constants.flex5,
                                          child:
                                              APIGuideItemBodyStart(item: item),
                                        ),
                                        SizedBox(width: Constants.size50),
                                        Flexible(
                                          flex: MediaQuery.of(context)
                                                      .size
                                                      .width <=
                                                  Constants.smallBreakPoint
                                              ? Constants.flex8
                                              : Constants.flex3,
                                          child: APIGuideItemBodyEnd(
                                            item: item,
                                            urlHost: widget.urlHost,
                                          ),
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
        ),
      ),
    );
  }
}

/// End of code
