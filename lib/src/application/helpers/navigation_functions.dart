import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [NavigationFunctions] class
class NavigationFunctions {
  /// Define [NavigationFunctions] constructor
  NavigationFunctions();

  /// Scroll to the introduction section
  scrollToIntro(
    /// WidgetRef
    WidgetRef ref,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// Find the RenderObject of the target widget.
    final renderBox = ref
        .read(introKeyProvider.notifier)
        .state
        .currentContext!
        .findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      ref.read(scrollController1Provider.notifier).state.position.ensureVisible(
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
      ref.read(isOpenSearchProvider.notifier).state = false;

      /// Reset key search value
      ref.read(searchKeyProvider.notifier).state = '';

      /// Reset isHovered value
      ref.read(isHoveredIntroProvider.notifier).state = false;
    }
  }

  /// Scroll to the FAQ section
  scrollToFaq(
    /// WidgetRef
    WidgetRef ref,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// Find the RenderObject of the target widget.
    final renderBox = ref
        .read(faqKeyProvider.notifier)
        .state
        .currentContext!
        .findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      ref.read(scrollController1Provider.notifier).state.position.ensureVisible(
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
      ref.read(isOpenSearchProvider.notifier).state = false;

      /// Reset key search value
      ref.read(searchKeyProvider.notifier).state = '';

      /// Reset isHovered value
      ref.read(isHoveredFaqsProvider.notifier).state = false;
    }
  }

  /// Scroll to a specific API item using its key
  scrollToAPIItem(
    /// WidgetRef
    WidgetRef ref,

    /// API Item
    APIItem item,

    /// bool isPop attribute
    bool isPop,
  ) {
    /// Get the itemKey value from the list.
    final itemKey = ref.watch(apiItemKeysProvider).firstWhere((element) =>
        element.toString().contains(
            '${item.title} ${item.urlPath} ${item.request.method.name}'));

    /// Find the RenderObject of the target widget.
    final targetRenderObject = itemKey.currentContext?.findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (targetRenderObject != null) {
      /// Make the scroll effect with ease curve
      ref.read(scrollController1Provider.notifier).state.position.ensureVisible(
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
      ref.read(isOpenSearchProvider.notifier).state = false;

      /// Reset key search value
      ref.read(searchKeyProvider.notifier).state = '';

      /// Reset isHovered value
      updateAPIItemIsHovered(item, false, ref);
    }
  }

  /// Scroll to the introduction section
  scrollToIntroDrawer(
    /// WidgetRef
    WidgetRef ref,
  ) {
    /// Find the RenderObject of the target widget.
    final renderBox = ref
        .read(introKeyProvider.notifier)
        .state
        .currentContext!
        .findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      ref.read(scrollController1Provider.notifier).state.position.ensureVisible(
            /// RenderObject
            renderBox,

            /// Duration
            duration: Duration(seconds: Constants.duration1),

            /// Curve
            curve: Curves.ease,
          );
    }

    /// Close drawer after click
    ref.read(scaffoldKeyProvider.notifier).state.currentState!.closeDrawer();
  }

  /// Scroll to the FAQ section
  scrollToFaqDrawer(
    /// WidgetRef
    WidgetRef ref,
  ) {
    /// Find the RenderObject of the target widget.
    final renderBox = ref
        .read(faqKeyProvider.notifier)
        .state
        .currentContext!
        .findRenderObject();

    /// Scroll to the target RenderObject's position if found
    if (renderBox != null) {
      /// Make the scroll effect with ease curve
      ref.read(scrollController1Provider.notifier).state.position.ensureVisible(
            /// RenderObject
            renderBox,

            /// Duration
            duration: Duration(seconds: Constants.duration1),

            /// Curve
            curve: Curves.ease,
          );
    }

    /// Close drawer after click
    ref.read(scaffoldKeyProvider.notifier).state.currentState!.closeDrawer();
  }

  /// Scroll to a specific API item using its key
  scrollToAPIItemDrawer(
    /// WidgetRef
    WidgetRef ref,

    /// API Item
    APIItem item,
  ) {
    /// Get the itemKey value from the list.
    final itemKey = ref.watch(apiItemKeysProvider).firstWhere((element) =>
        element.toString().contains(
            '${item.title} ${item.urlPath} ${item.request.method.name}'));

    /// Find the RenderObject of the target widget.
    final targetRenderObject = itemKey.currentContext!.findRenderObject();

    /// Scroll to the target RenderObject's position if found.
    if (targetRenderObject != null) {
      /// Make the scroll effect with ease curve
      ref.read(scrollController1Provider.notifier).state.position.ensureVisible(
            /// RenderObject
            targetRenderObject,

            /// Duration
            duration: Duration(seconds: Constants.duration1),

            /// Curve
            curve: Curves.ease,
          );
    }

    /// Close drawer after click
    ref.read(scaffoldKeyProvider.notifier).state.currentState!.closeDrawer();
  }
}
