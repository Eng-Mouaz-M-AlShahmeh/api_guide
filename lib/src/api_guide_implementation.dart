/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../api_guide.dart';

/// Code starts here
/// Define [APIGuide] class
class APIGuide implements APIGuideInterface {
  /// Definition of [APIGuide] instance
  APIGuide();

  /// Implement the interface
  @override

  /// display Widget implementation
  Widget display({
    /// Build context implementation
    required BuildContext context,

    /// Host URL implementation
    required String urlHost,

    /// List of API items implementation
    required List<APIItem> apiItems,

    /// List of FAQs implementation
    required List<APIGuideFAQ> apiFaqs,

    /// API version implementation
    required double version,

    /// Date of the latest update implementation
    required DateTime latestUpdate,

    /// Introduction to the API Guide implementation
    required String apiIntro,

    /// Terms Link of the API Guide implementation
    String? termsLink,

    /// Privacy Link of the API Guide implementation
    String? privacyLink,

    /// Contact Link of the API Guide implementation
    String? contactLink,

    /// Contact Email of the API Guide implementation
    String? contactEmail,

    /// Theme Color of the API Guide implementation
    APIGuideThemeColor? themeColor,

    /// Theme SPDX Licence Type of the API Guide implementation
    SPDXLicenceType? spdxLicenceType,
  }) {
    /// Return [MultiProvider]
    return MultiProvider(
      providers: [
        /// Create [AppProvider] from type [ChangeNotifierProvider]
        ChangeNotifierProvider(create: (_) => AppProvider()),

        /// Create [ThemeProvider] from type [ChangeNotifierProvider]
        ChangeNotifierProvider(create: (_) => ThemeProvider()),

        /// Create [SearchProvider] from type [ChangeNotifierProvider]
        ChangeNotifierProvider(create: (_) => SearchProvider()),
      ],
      child: APIGuideScreen(
        /// Host URL
        urlHost: urlHost,

        /// List of API items
        apiItems: apiItems,

        /// List of FAQs
        apiFaqs: apiFaqs,

        /// API version
        version: version,

        /// Date of the latest update
        latestUpdate: latestUpdate,

        /// Introduction to the API Guide
        apiIntro: apiIntro,

        /// Theme Color of the API Guide
        themeColor: themeColor,

        /// Terms Link of the API Guide
        termsLink: termsLink,

        /// Privacy Link of the API Guide
        privacyLink: privacyLink,

        /// Contact Link of the API Guide
        contactLink: contactLink,

        /// Contact Email of the API Guide
        contactEmail: contactEmail,

        /// SPDX Licence Type of the API Guide
        spdxLicenceType: spdxLicenceType,
      ),
    );
  }
}

/// End of code
