/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideScreen extends StatefulWidget {
  const APIGuideScreen({
    /// Super key for widget
    super.key,

    /// Build context
    required this.context,

    /// Host URL
    required this.urlHost,

    /// List of API items
    required this.apiItems,

    /// List of FAQs
    required this.apiFaqs,

    /// API version
    required this.version,

    /// Date of the latest update
    required this.latestUpdate,

    /// Introduction to the API Guide
    required this.apiIntro,
  });

  /// Build context
  final BuildContext context;

  /// Host URL
  final String urlHost;

  /// List of API items
  final List<APIItem> apiItems;

  /// List of FAQs
  final List<APIGuideFAQ> apiFaqs;

  /// API version
  final double version;

  /// Date of the latest update
  final DateTime latestUpdate;

  /// Introduction to the API Guide
  final String apiIntro;

  @override
  State<APIGuideScreen> createState() => _APIGuideScreenState();
}

class _APIGuideScreenState extends State<APIGuideScreen> {
  /// Scroll controller for the first section
  final ScrollController _scrollController1 = ScrollController();

  /// Scroll controller for the second section
  final ScrollController _scrollController2 = ScrollController();

  /// GlobalKey for the introduction section
  final GlobalKey _introKey = GlobalKey();

  /// GlobalKey for the FAQ section
  final GlobalKey _faqKey = GlobalKey();

  /// GlobalKey for the scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  /// List of global keys for API items
  List<GlobalKey> _apiItemKeys = [];

  @override
  void initState() {
    /// Initialize global keys for API items
    setState(() {
      _apiItemKeys =
          widget.apiItems.map((e) => GlobalKey(debugLabel: e.title)).toList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// Scaffold widget for the API Guide
    return Scaffold(
      key: _scaffoldKey,

      /// Drawer widget for small screens
      drawer: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
          ? Drawer(
              child: APIGuideNavigatorDrawer(
                version: widget.version,
                latestUpdate: widget.latestUpdate,
                apiItemsList: widget.apiItems,
                introKey: _introKey,
                faqKey: _faqKey,
                apiItemKeys: _apiItemKeys,
                scrollController: _scrollController1,
                scaffoldKey: _scaffoldKey,
              ),
            )
          : Drawer(child: SizedBox()),

      /// AppBar widget
      appBar: apiGuideAppBar(
        context,
        widget.version,
        widget.latestUpdate,
        _scaffoldKey,
      ),

      /// Body of the application
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Navigator for large screens
            MediaQuery.of(context).size.width <= Constants.largeBreakPoint
                ? SizedBox()
                : Expanded(
                    flex: Constants.flex2,
                    child: APIGuideNavigator(
                      version: widget.version,
                      latestUpdate: widget.latestUpdate,
                      apiItemsList: widget.apiItems,
                      introKey: _introKey,
                      faqKey: _faqKey,
                      scrollController: _scrollController1,
                      apiItemKeys: _apiItemKeys,
                    ),
                  ),

            /// Content section
            Expanded(
              flex:
                  MediaQuery.of(context).size.width <= Constants.largeBreakPoint
                      ? Constants.flex10
                      : Constants.flex8,
              child: SingleChildScrollView(
                controller: _scrollController1,
                child: Padding(
                  padding: const EdgeInsets.all(Constants.size30),
                  child: Column(
                    children: [
                      SizedBox(height: Constants.size15),

                      /// Introduction section
                      Row(
                        key: _introKey,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Constants.arrowDoubleNavIcon,
                            color: Constants.indigoColor,
                            size: Constants.size20,
                          ),
                          Text(
                            Constants.introTxt,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Constants.indigoColor,
                              fontSize: Constants.size20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: Constants.size15),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              widget.apiIntro,
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: Constants.size15),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Constants.size15),

                      /// API Items section
                      APIGuideAPIItems(
                        apiItemsList: widget.apiItems,
                        apiItemKeys: _apiItemKeys,
                        scrollController: _scrollController2,
                        urlHost: widget.urlHost,
                      ),
                      SizedBox(height: Constants.size50),

                      /// FAQ section
                      Row(
                        key: _faqKey,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Constants.arrowDoubleNavIcon,
                            color: Constants.indigoColor,
                            size: Constants.size20,
                          ),
                          Text(
                            Constants.faqsTxt,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Constants.indigoColor,
                              fontSize: Constants.size20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: Constants.size15),

                      /// FAQ items
                      APIGuideFaqItems(apiFaqsList: widget.apiFaqs),
                      SizedBox(height: Constants.size15),

                      /// Copyright notice
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${Constants.rightsTxt} ${DateTime.now().year}',
                            style: TextStyle(fontSize: Constants.size10),
                          ),
                        ],
                      ),
                      SizedBox(height: Constants.size15),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// End of code
