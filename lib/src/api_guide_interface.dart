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
/// Define [APIGuideInterface] abstract class
abstract class APIGuideInterface {
  /// display Widget interface to implement later
  Widget display({
    /// Build context interface to implement later
    required BuildContext context,

    /// Host URL interface to implement later
    required String urlHost,

    /// List of API items interface to implement later
    required List<APIItem> apiItems,

    /// List of FAQs interface to implement later
    required List<APIGuideFAQ> apiFaqs,

    /// API version interface to implement later
    required double version,

    /// Date of the latest update interface to implement later
    required DateTime latestUpdate,

    /// Introduction to the API Guide interface to implement later
    required String apiIntro,

    /// Terms Link of the API Guide interface to implement later
    String? termsLink,

    /// Privacy Link of the API Guide interface to implement later
    String? privacyLink,

    /// Contact Link of the API Guide interface to implement later
    String? contactLink,

    /// Contact Email of the API Guide interface to implement later
    String? contactEmail,

    /// Theme Color of the API Guide interface to implement later
    APIGuideThemeColor? themeColor,

    /// SPDX Licence Type of the API Guide interface to implement later
    SPDXLicenceType? spdxLicenceType,
  });

  /// Define [APIGuideInterface] constructor
  const APIGuideInterface();
}
