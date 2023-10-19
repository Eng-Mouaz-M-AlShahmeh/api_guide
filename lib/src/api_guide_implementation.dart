/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../api_guide.dart';

/// Code starts here
class APIGuide implements APIGuideInterface {
  /// Definition of [APIGuide] instance
  APIGuide();

  /// Implement the interface
  @override
  Widget display({
    required BuildContext context,
    required String urlHost,
    required List<APIItem> apiItems,
    required List<APIGuideFAQ> apiFaqs,
    required double version,
    required DateTime latestUpdate,
    required String apiIntro,
  }) {
    return APIGuideScreen(
      context: context,
      urlHost: urlHost,
      apiItems: apiItems,
      apiFaqs: apiFaqs,
      version: version,
      latestUpdate: latestUpdate,
      apiIntro: apiIntro,
    );
  }
}

/// End of code
