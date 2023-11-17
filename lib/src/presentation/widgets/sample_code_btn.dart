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

/// Sample Code Button of type [ElevatedButton]
ElevatedButton sampleCodeButton(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return ElevatedButton(
    onPressed: () {
      /// Update the [isOpenSampleCode] when pressed the button
      appState.updateIsOpenSampleCode(true);
    },
    style: ButtonStyle(
      side: MaterialStateProperty.all(
        BorderSide(
          color: themeState.isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
          width: Constants.size1,
        ),
      ),
      foregroundColor: MaterialStateProperty.all(
        themeState.isDarkMode
            ? ConstantsDarkMode.blackColor
            : ConstantsLightMode.blackColor,
      ),
      backgroundColor: MaterialStateProperty.all(
        themeState.isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(Constants.size8),
      child: Text(
        appState.sampleCodeType,
        style: TextStyle(
          fontSize: Constants.size12,
          color: themeState.isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
        ),
      ),
    ),
  );
}

/// Sample Code Dialog from type of [Dialog]
Dialog sampleCodeDialog(BuildContext context) {
  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  return Dialog(
    backgroundColor: Colors.transparent,
    child: SizedBox(
      /// Check for screens larger than [Constants.smallBreakPoint]
      width: MediaQuery.of(context).size.width <= Constants.smallBreakPoint
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * Constants.size05,
      child: DecoratedBox(
        decoration: BoxDecoration(
          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.whiteColor
              : ConstantsLightMode.whiteColor,
          borderRadius: BorderRadius.circular(Constants.size8),
        ),
        child: Padding(
          padding: EdgeInsets.all(Constants.size15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: SampleCodeFunctions()
                        .types
                        .map(
                          (item) => ListTile(
                            title: Text(
                              item,
                              style: TextStyle(
                                color: themeState.isDarkMode
                                    ? ConstantsDarkMode.blackColor
                                    : ConstantsLightMode.blackColor,
                              ),
                            ),
                            onTap: () {
                              /// Update the [sampleCodeType]
                              /// when tap the item
                              appState.updateSampleCodeType(item);

                              /// Update the [isOpenSampleCode]
                              /// when tap the item
                              appState.updateIsOpenSampleCode(false);
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              SizedBox(height: Constants.size15),
              closeSampleCodeDialogButton(context),
            ],
          ),
        ),
      ),
    ),
  );
}
