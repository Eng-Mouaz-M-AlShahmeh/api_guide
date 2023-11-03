/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideItemHeader extends StatelessWidget {
  const APIGuideItemHeader({
    /// Super key for widget
    super.key,

    /// API item for which to display the header
    required this.item,

    /// Host URL for the API
    required this.urlHost,
  });

  /// API item for which to display the header
  final APIItem item;

  /// Host URL for the API
  final String urlHost;

  @override
  Widget build(BuildContext context) {
    /// ThemeNotifierProvider to check theme attributes state
    final themeState = ThemeNotifierProvider.of(context).themeStateNotifier;
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          /// Check the current light/dark theme mode
          color: themeState.isDarkMode
              ? ConstantsDarkMode.indigoLightColor
              : ConstantsLightMode.indigoLightColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(Constants.size15),
          child: Row(
            children: [
              Flexible(
                child: Text(
                  item.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Constants.size20,

                    /// Check the current light/dark theme mode
                    color: themeState.isDarkMode
                        ? ConstantsDarkMode.indigoColor
                        : ConstantsLightMode.indigoColor,
                  ),
                ),
              ),
              SizedBox(width: Constants.size15),
              Flexible(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(Constants.size10)),
                  child: SizedBox(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:
                            Constants.getMethodColor(item.request.method.name),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Constants.size10,
                          Constants.size5,
                          Constants.size10,
                          Constants.size5,
                        ),
                        child: Text(
                          item.request.method.name,
                          style: TextStyle(
                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.whiteColor
                                : ConstantsLightMode.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: Constants.size13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: Constants.size15),
              Flexible(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(Constants.size5)),
                  child: SizedBox(
                    child: DecoratedBox(
                      decoration: BoxDecoration(

                          /// Check the current light/dark theme mode
                          color: themeState.isDarkMode
                              ? ConstantsDarkMode.greyLightColor
                              : ConstantsLightMode.greyLightColor),
                      child: Padding(
                        padding: const EdgeInsets.all(Constants.size5),

                        /// Display the URL
                        child: SelectableText(
                          '$urlHost${item.urlPath}',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size15,

                            /// Check the current light/dark theme mode
                            color: themeState.isDarkMode
                                ? ConstantsDarkMode.blackColor
                                : ConstantsLightMode.blackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// End of code
