/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class NavigationFunctions {
  /// Scroll to the introduction section
  scrollToIntro(
    /// BuildContext
    BuildContext context,

    /// Introduction GlobalKey
    GlobalKey introKey,

    /// Scroll Controller
    ScrollController scrollController,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// SearchNotifierProvider to check search attributes' states
    final searchState =
        SearchNotifierProvider.of(context, listen: false).searchStateNotifier;

    /// Find the RenderObject of the target widget.
    final renderBox = introKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      scrollController.position.ensureVisible(
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
      /// Toggle the [_isOpened] state
      searchState.toggleIsOpen(false);

      /// Call the function to close the dialog after click
      Navigator.of(context).pop();
    }
  }

  /// Scroll to the FAQ section
  scrollToFaq(
    /// BuildContext
    BuildContext context,

    /// Introduction GlobalKey
    GlobalKey faqKey,

    /// Scroll Controller
    ScrollController scrollController,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// SearchNotifierProvider to check search attributes' states
    final searchState =
        SearchNotifierProvider.of(context, listen: false).searchStateNotifier;

    /// Find the RenderObject of the target widget.
    final renderBox = faqKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      scrollController.position.ensureVisible(
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
      /// Toggle the [_isOpened] state
      searchState.toggleIsOpen(false);

      /// Call the function to close the dialog after click
      Navigator.of(context).pop();
    }
  }

  /// Scroll to a specific API item using its key
  scrollToAPIItem(
    /// BuildContext
    BuildContext context,

    /// Scroll Controller
    ScrollController scrollController,

    /// API Item GlobalKey
    GlobalKey key,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// SearchNotifierProvider to check search attributes' states
    final searchState =
        SearchNotifierProvider.of(context, listen: false).searchStateNotifier;

    /// Find the RenderObject of the target widget.
    final targetRenderObject = key.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (targetRenderObject != null) {
      /// Make the scroll effect with ease curve
      scrollController.position.ensureVisible(
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
      /// Toggle the [_isOpened] state
      searchState.toggleIsOpen(false);

      /// Call the function to close the dialog after click
      Navigator.of(context).pop();
    }
  }

  /// Scroll to the introduction section
  scrollToIntroDrawer(
    /// BuildContext
    BuildContext context,

    /// Introduction GlobalKey
    GlobalKey introKey,

    /// Scroll Controller
    ScrollController scrollController,

    /// Global key of Scaffold State
    GlobalKey<ScaffoldState> scaffoldKey,
  ) {
    /// Find the RenderObject of the target widget.
    final renderBox = introKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      scrollController.position.ensureVisible(
        /// RenderObject
        renderBox,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    scaffoldKey.currentState!.closeDrawer();
  }

  /// Scroll to the FAQ section
  scrollToFaqDrawer(
    /// BuildContext
    BuildContext context,

    /// FAQs GlobalKey
    GlobalKey faqKey,

    /// Scroll Controller
    ScrollController scrollController,

    /// Global key of Scaffold State
    GlobalKey<ScaffoldState> scaffoldKey,
  ) {
    /// Find the RenderObject of the target widget.
    final renderBox = faqKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      scrollController.position.ensureVisible(
        /// RenderObject
        renderBox,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    scaffoldKey.currentState!.closeDrawer();
  }

  /// Scroll to a specific API item using its key
  scrollToAPIItemDrawer(
    /// BuildContext
    BuildContext context,

    /// APIItem GlobalKey
    GlobalKey key,

    /// Scroll Controller
    ScrollController scrollController,

    /// Global key of Scaffold State
    GlobalKey<ScaffoldState> scaffoldKey,
  ) {
    /// Find the RenderObject of the target widget.
    final targetRenderObject = key.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (targetRenderObject != null) {
      /// Make the scroll effect with ease curve
      scrollController.position.ensureVisible(
        /// RenderObject
        targetRenderObject,

        /// Duration
        duration: Duration(seconds: Constants.duration1),

        /// Curve
        curve: Curves.ease,
      );
    }

    /// Close drawer after click
    scaffoldKey.currentState!.closeDrawer();
  }
}

/// End of code
