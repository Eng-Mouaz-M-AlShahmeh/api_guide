/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package
/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [NavigationFunctions] class
class NavigationFunctions {
  /// Define [NavigationFunctions] constructor
  NavigationFunctions();

  /// Scroll to the introduction section
  scrollToIntro(
    /// BuildContext
    BuildContext context,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// SearchNotifierProvider to check search attributes' states
    final searchState = context.read<SearchProvider>();

    /// AppNotifierProvider to check search attributes' states
    final appState = context.read<AppProvider>();

    /// Find the RenderObject of the target widget.
    final renderBox = appState.introKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      appState.scrollController1.position.ensureVisible(
        /// RenderObject
        renderBox,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Check the isPop value
    if (isPop) {
      /// Reset the isOpened state
      searchState.updateIsOpenSearch(false);

      /// Reset key search value
      searchState.updateSearchKey('');

      /// Reset isHovered value
      searchState.updateIsHoveredIntro(false);
    }
  }

  /// Scroll to the FAQ section
  scrollToFaq(
    /// BuildContext
    BuildContext context,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// SearchNotifierProvider to check search attributes' states
    final searchState = context.read<SearchProvider>();

    /// AppNotifierProvider to check search attributes' states
    final appState = context.read<AppProvider>();

    /// Find the RenderObject of the target widget.
    final renderBox = appState.faqKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      appState.scrollController1.position.ensureVisible(
        /// RenderObject
        renderBox,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Check the isPop value
    if (isPop) {
      /// Reset the isOpened state
      searchState.updateIsOpenSearch(false);

      /// Reset key search value
      searchState.updateSearchKey('');

      /// Reset isHovered value
      searchState.updateIsHoveredFaqs(false);
    }
  }

  /// Scroll to a specific API item using its key
  scrollToAPIItem(
    /// BuildContext
    BuildContext context,

    /// API Item
    APIItem item,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// SearchNotifierProvider to check search attributes' states
    final searchState = context.read<SearchProvider>();

    /// AppNotifierProvider to check search attributes' states
    final appState = context.read<AppProvider>();

    /// Get the itemKey value from the list.
    final itemKey = appState.apiItemKeys.firstWhere((element) => element
        .toString()
        .contains('${item.title} ${item.urlPath} ${item.request.method.name}'));

    /// Find the RenderObject of the target widget.
    final targetRenderObject = itemKey.currentContext?.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (targetRenderObject != null) {
      /// Make the scroll effect with ease curve
      appState.scrollController1.position.ensureVisible(
        /// RenderObject
        targetRenderObject,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Check the isPop value
    if (isPop) {
      /// Reset the isOpened state
      searchState.updateIsOpenSearch(false);

      /// Reset key search value
      searchState.updateSearchKey('');

      /// Reset isHovered value
      appState.updateAPIItemIsHovered(item, false);
    }
  }

  /// Scroll to the introduction section
  scrollToIntroDrawer(
    /// BuildContext
    BuildContext context,
  ) {
    /// AppNotifierProvider to check search attributes' states
    final appState = context.read<AppProvider>();

    /// Find the RenderObject of the target widget.
    final renderBox = appState.introKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      appState.scrollController1.position.ensureVisible(
        /// RenderObject
        renderBox,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    appState.scaffoldKey.currentState!.closeDrawer();
  }

  /// Scroll to the FAQ section
  scrollToFaqDrawer(
    /// BuildContext
    BuildContext context,
  ) {
    /// AppNotifierProvider to check search attributes' states
    final appState = context.read<AppProvider>();

    /// Find the RenderObject of the target widget.
    final renderBox = appState.faqKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      appState.scrollController1.position.ensureVisible(
        /// RenderObject
        renderBox,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    appState.scaffoldKey.currentState!.closeDrawer();
  }

  /// Scroll to a specific API item using its key
  scrollToAPIItemDrawer(
    /// BuildContext
    BuildContext context,

    /// API Item
    APIItem item,
  ) {
    /// AppNotifierProvider to check search attributes' states.
    final appState = context.read<AppProvider>();

    /// Get the itemKey value from the list.
    final itemKey = appState.apiItemKeys.firstWhere((element) => element
        .toString()
        .contains('${item.title} ${item.urlPath} ${item.request.method.name}'));

    /// Find the RenderObject of the target widget.
    final targetRenderObject = itemKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found.
    if (targetRenderObject != null) {
      /// Make the scroll effect with ease curve
      appState.scrollController1.position.ensureVisible(
        /// RenderObject
        targetRenderObject,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    appState.scaffoldKey.currentState!.closeDrawer();
  }
}
