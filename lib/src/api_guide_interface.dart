/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Define our [APIGuide] library
library api_guide;

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../api_guide.dart';

/// Make it as interface to implement later
abstract class APIGuideInterface {
  Widget display({
    ///
    required BuildContext context,

    ///
    required String urlHost,

    ///
    required List<APIItem> apiItems,

    ///
    required List<APIGuideFAQ> apiFaqs,

    ///
    required double version,

    ///
    required DateTime latestUpdate,

    ///
    required String apiIntro,
  });
}
