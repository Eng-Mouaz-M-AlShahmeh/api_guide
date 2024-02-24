import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../api_guide.dart';

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

    /// List of API servers implementation
    required List<APIServer> servers,

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
    /// Wrap with [ProviderScope]
    return ProviderScope(
      /// Return [APIGuideScreen]
      child: APIGuideScreen(
        /// List of API servers
        servers: servers,

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
