/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideNavigatorDrawer extends StatelessWidget {
  const APIGuideNavigatorDrawer({
    /// Constructor with parameters
    super.key,

    /// Required API version
    required this.version,

    /// Date of the latest update
    required this.latestUpdate,

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

    /// Global key of Scaffold State
    required this.scaffoldKey,
  });

  /// API version number
  final double version;

  /// Date of the latest update
  final DateTime latestUpdate;

  /// List of API items
  final List<APIItem> apiItemsList;

  /// Key for the introduction section
  final GlobalKey introKey;

  /// Key for the FAQ section
  final GlobalKey faqKey;

  /// List of keys for API items
  final List<GlobalKey> apiItemKeys;

  /// Scroll controller
  final ScrollController scrollController;

  /// Global key of Scaffold State
  final GlobalKey<ScaffoldState> scaffoldKey;

  /// Scroll to the introduction section
  _scrollToIntro() {
    /// Find the RenderObject of the target widget.
    final renderBox = introKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      scrollController.position.ensureVisible(
        renderBox,
        duration: Duration(seconds: Constants.duration1),
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    scaffoldKey.currentState!.closeDrawer();
  }

  /// Scroll to the FAQ section
  _scrollToFaq() {
    /// Find the RenderObject of the target widget.
    final renderBox = faqKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      scrollController.position.ensureVisible(
        renderBox,
        duration: Duration(seconds: Constants.duration1),
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    scaffoldKey.currentState!.closeDrawer();
  }

  /// Scroll to a specific API item using its key
  _scrollToAPIItem(GlobalKey key) {
    /// Find the RenderObject of the target widget.
    final targetRenderObject = key.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (targetRenderObject != null) {
      scrollController.position.ensureVisible(
        targetRenderObject,
        duration: Duration(seconds: Constants.duration1),
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    scaffoldKey.currentState!.closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Constants.greyLightColor,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Constants.size20),
            child: Column(
              children: [
                SizedBox(height: Constants.size15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      /// Display the API version
                      '${Constants.apiGuideTxt}$version',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Constants.blackColor,
                        fontSize: Constants.size22,
                      ),
                    )
                  ],
                ),
                SizedBox(height: Constants.size15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      /// Display the latest update date
                      '${Constants.latestUpdateTxt}${latestUpdate.year}-${latestUpdate.month}-${latestUpdate.day}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Constants.blackColor,
                        fontSize: Constants.size10,
                      ),
                    )
                  ],
                ),
                SizedBox(height: Constants.size50),
                InkWell(
                  /// Introduction section link
                  onTap: () => _scrollToIntro(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Constants.arrowDoubleNavIcon,
                        color: Constants.indigoColor,
                        size: Constants.size15,
                      ),
                      Text(
                        Constants.introTxt,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Constants.indigoColor,
                          fontSize: Constants.size15,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: Constants.size15),
                Column(
                  /// List of API items and their links
                  children: apiItemsList
                      .map((item) => Column(
                            children: [
                              InkWell(
                                onTap: () => _scrollToAPIItem(
                                  apiItemKeys.firstWhere(
                                    (element) =>
                                        element.toString().contains(item.title),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Constants.arrowDoubleNavIcon,
                                          color: Constants.indigoColor,
                                          size: Constants.size15,
                                        ),
                                        Text(
                                          item.title,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Constants.indigoColor,
                                            fontSize: Constants.size15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Constants.size30),
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(Constants.size10),
                                      ),
                                      child: SizedBox(
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Constants.getMethodColor(
                                              item.request.method.name,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                              Constants.size10,
                                              Constants.size5,
                                              Constants.size10,
                                              Constants.size5,
                                            ),
                                            child: Text(
                                              item.request.method.name,
                                              style: TextStyle(
                                                color: Constants.whiteColor,
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
                              ),
                              SizedBox(height: Constants.size15),
                            ],
                          ))
                      .toList(),
                ),
                InkWell(
                  /// FAQ section link
                  onTap: () => _scrollToFaq(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Constants.arrowDoubleNavIcon,
                        color: Constants.indigoColor,
                        size: Constants.size15,
                      ),
                      Text(
                        Constants.faqsShortTxt,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Constants.indigoColor,
                          fontSize: Constants.size15,
                        ),
                      )
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
}

/// End of code
