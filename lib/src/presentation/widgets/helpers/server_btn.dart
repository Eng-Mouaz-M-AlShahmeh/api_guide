/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package
/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Server Button of type [ElevatedButton]
ElevatedButton serverButton(
  /// BuildContext
  BuildContext context,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// AppNotifierProvider to check theme attributes' states
  final appState = context.read<AppProvider>();

  return ElevatedButton(
    onPressed: () {
      /// Update the [updateIsOpenServer] when pressed the button
      appState.updateIsOpenServer(true);
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
      child: Wrap(
        spacing: Constants.size2,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Constants.size0,
              Constants.size2,
              Constants.size0,
              Constants.size2,
            ),
            child: Icon(
              Constants.dnsIcon,
              size: Constants.size12,
              color: themeState.isDarkMode
                  ? ConstantsDarkMode.blackColor
                  : ConstantsLightMode.blackColor,
            ),
          ),
          Text(
            appState.selectedAPIServer.title ?? Constants.liveTxt,
            style: TextStyle(
              fontSize: Constants.size12,
              color: themeState.isDarkMode
                  ? ConstantsDarkMode.blackColor
                  : ConstantsLightMode.blackColor,
            ),
          ),
        ],
      ),
    ),
  );
}

/// Server Dialog from type of [Dialog]
Dialog serverDialog(BuildContext context) {
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
          padding: EdgeInsets.all(Constants.size25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      Constants.serversTxt,
                      style: TextStyle(
                        color: themeState.isDarkMode
                            ? ConstantsDarkMode.blackColor
                            : ConstantsLightMode.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: appState.apiServerList
                      .map(
                        (item) => ListTile(
                          title: Wrap(
                            children: [
                              appState.selectedAPIServer.urlHost == item.urlHost
                                  ? Icon(
                                      Constants.doneIcon,
                                      color: themeState.isDarkMode
                                          ? ConstantsDarkMode.blackColor
                                          : ConstantsLightMode.blackColor,
                                    )
                                  : SizedBox(),
                              Text(
                                item.title ?? Constants.liveTxt,
                                style: TextStyle(
                                  color: themeState.isDarkMode
                                      ? ConstantsDarkMode.blackColor
                                      : ConstantsLightMode.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            item.urlHost,
                            style: TextStyle(
                              color: themeState.isDarkMode
                                  ? ConstantsDarkMode.blackColor
                                  : ConstantsLightMode.blackColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          onTap: () {
                            /// Update the [selectedAPIServer]
                            /// when tap the item
                            appState.updateSelectedAPIServer(item);

                            /// Update the [isOpenSampleCode]
                            /// when tap the item
                            appState.updateIsOpenServer(false);
                          },
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: Constants.size15),
                closeServerDialogButton(context),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
