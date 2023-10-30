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
  }) {
    /// Define [ThemeStateNotifier] instance
    final ThemeStateNotifier themeStateNotifier = ThemeStateNotifier();

    /// Return ThemeNotifierProvider
    return ThemeNotifierProvider(
      /// Initialize the themeStateNotifier attribute
      themeStateNotifier: themeStateNotifier,
      child: APIGuideScreen(
        /// Build context implementation
        context: context,

        /// Host URL implementation
        urlHost: urlHost,

        /// List of API items implementation
        apiItems: apiItems,

        /// List of FAQs implementation
        apiFaqs: apiFaqs,

        /// API version implementation
        version: version,

        /// Date of the latest update implementation
        latestUpdate: latestUpdate,

        /// Introduction to the API Guide implementation
        apiIntro: apiIntro,

        /// Terms Link of the API Guide implementation
        termsLink: termsLink,

        /// Privacy Link of the API Guide implementation
        privacyLink: privacyLink,
      ),
    );
  }
}

/// End of code
