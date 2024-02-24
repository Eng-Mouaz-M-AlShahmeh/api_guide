import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [apiGuideAppBar] function
AppBar apiGuideAppBar(
  /// WidgetRef
  WidgetRef ref,

  /// BuildContext
  BuildContext context,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  /// Return AppBar widget
  return AppBar(
    title: Text(Constants.emptyTxt),

    /// To make the title fixed at the center
    centerTitle: true,

    /// Check the current light/dark theme mode
    backgroundColor: isDarkMode
        ? ConstantsDarkMode.themeColor(ref)
        : ConstantsLightMode.themeColor(ref),

    ///  Leading icon (menu) for smaller screens
    leadingWidth: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
        ? Constants.size56
        : Constants.size300,

    /// Leading icon (menu) for smaller screens
    leading: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
        ? IconButton(
            icon: Icon(
              Constants.menuIcon,

              /// Check the current light/dark theme mode
              color: isDarkMode
                  ? ConstantsDarkMode.whiteColor
                  : ConstantsLightMode.whiteColor,
            ),
            onPressed: () {
              /// Open the drawer when the leading icon is pressed
              ref
                  .read(scaffoldKeyProvider.notifier)
                  .state
                  .currentState!
                  .openDrawer();
            },
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Appear only on screens larger than [Constants.smallBreakPoint]
              MediaQuery.of(context).size.width <= Constants.smallBreakPoint
                  ? SizedBox()
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(Constants.size8,
                          Constants.size0, Constants.size8, Constants.size0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            /// Display the API version
                            '${Constants.apiGuideTxt} ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                              /// Check the current light/dark theme mode
                              color: isDarkMode
                                  ? ConstantsDarkMode.whiteColor
                                  : ConstantsLightMode.whiteColor,
                              fontSize: Constants.size22,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(Constants.size10),
                            ),
                            child: SizedBox(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: isDarkMode
                                      ? ConstantsDarkMode.themeColorLight(ref)
                                      : ConstantsLightMode.themeColorLight(ref),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    Constants.size10,
                                    Constants.size5,
                                    Constants.size10,
                                    Constants.size5,
                                  ),
                                  child: Text(
                                    '${Constants.versionTxt}${ref.watch(versionProvider).toStringAsFixed(1)}',
                                    style: TextStyle(
                                      /// Check the current light/dark theme mode
                                      color: isDarkMode
                                          ? ConstantsDarkMode.themeColor(ref)
                                          : ConstantsLightMode.themeColor(ref),
                                      fontWeight: FontWeight.normal,
                                      fontSize: Constants.size10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

              /// Appear only on screens larger than [Constants.smallBreakPoint]
              MediaQuery.of(context).size.width <= Constants.smallBreakPoint
                  ? SizedBox()
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(Constants.size8,
                          Constants.size0, Constants.size8, Constants.size0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            /// Display the latest update date
                            '${Constants.latestUpdateTxt}${ref.watch(latestUpdateProvider).year}-${ref.watch(latestUpdateProvider).month}-${ref.watch(latestUpdateProvider).day}',
                            style: TextStyle(
                              fontSize: Constants.size10,

                              /// Check the current light/dark theme mode
                              color: isDarkMode
                                  ? ConstantsDarkMode.whiteColor
                                  : ConstantsLightMode.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),

    /// Actions icon (light ot dark) for theme mode switch
    actions: [
      Padding(
        padding: const EdgeInsets.fromLTRB(
          Constants.size15,
          Constants.size0,
          Constants.size15,
          Constants.size0,
        ),
        child: apiGuideSearchScreen(ref, context),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(
          Constants.size15,
          Constants.size0,
          Constants.size15,
          Constants.size0,
        ),
        child: IconButton(
          icon: Icon(
            /// Check the current light/dark theme mode
            isDarkMode ? Constants.lightIcon : Constants.darkIcon,

            /// Check the current light/dark theme mode
            color: isDarkMode
                ? ConstantsDarkMode.whiteColor
                : ConstantsLightMode.whiteColor,
          ),
          onPressed: () {
            /// Switch theme mode light/dark
            ref.read(isDarkModeProvider.notifier).state =
                !ref.read(isDarkModeProvider);
          },
        ),
      ),
    ],
  );
}
