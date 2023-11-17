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

/// Code starts here
/// Define [apiGuideItemBodyStart] function
Column apiGuideItemBodyStart(
  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  /// ThemeNotifierProvider to check theme attributes' states
  final themeState = context.read<ThemeProvider>();

  /// List of Request Path Params
  final pathParams = item.request.params
      .where((e) => e.parameterType == ParameterType.path)
      .toList();

  /// List of Request Query Params
  final queryParams = item.request.params
      .where((e) => e.parameterType == ParameterType.query)
      .toList();

  /// List of Request Headers
  final headerParams = item.request.params
      .where((e) => e.parameterType == ParameterType.header)
      .toList();

  /// List of Request Cookies
  final cookieParams = item.request.params
      .where((e) => e.parameterType == ParameterType.cookie)
      .toList();

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      /// ............................
      /// Description section
      /// ............................
      item.description.isEmpty
          ? SizedBox()
          : SizedBox(height: Constants.size15),

      /// Display the item's description
      item.description.isEmpty
          ? SizedBox()
          : SelectableText(
              item.description,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: Constants.size15,

                /// Check the current light/dark theme mode
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.blackColor
                    : ConstantsLightMode.blackColor,
              ),
            ),
      item.description.isEmpty
          ? SizedBox()
          : SizedBox(height: Constants.size15),

      /// ............................
      /// Request Path Params section
      /// ............................
      pathParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size15),

      /// Display "Request Path Params" text if the request exists
      pathParams.isEmpty
          ? SizedBox()
          : SelectableText(
              Constants.requestPathParamsTxt,
              style: TextStyle(
                /// Check the current light/dark theme mode
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.themeColor(context)
                    : ConstantsLightMode.themeColor(context),
                fontWeight: FontWeight.normal,
                fontSize: Constants.size15,
              ),
            ),
      pathParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size5),

      /// Display details of the request params
      pathParams.isEmpty ? SizedBox() : requestParamsItems(context, pathParams),

      /// ............................
      /// Request Query Params section
      /// ............................
      queryParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size15),

      /// Display "Request Query Params" text if the request exists
      queryParams.isEmpty
          ? SizedBox()
          : SelectableText(
              Constants.requestQueryParamsTxt,
              style: TextStyle(
                /// Check the current light/dark theme mode
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.themeColor(context)
                    : ConstantsLightMode.themeColor(context),
                fontWeight: FontWeight.normal,
                fontSize: Constants.size15,
              ),
            ),
      queryParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size5),

      /// Display details of the request params
      queryParams.isEmpty
          ? SizedBox()
          : requestParamsItems(context, queryParams),

      /// ............................
      /// Request Headers section
      /// ............................
      headerParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size15),

      /// Display "Request Headers" text if the request exists
      headerParams.isEmpty
          ? SizedBox()
          : SelectableText(
              Constants.requestHeadersTxt,
              style: TextStyle(
                /// Check the current light/dark theme mode
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.themeColor(context)
                    : ConstantsLightMode.themeColor(context),
                fontWeight: FontWeight.normal,
                fontSize: Constants.size15,
              ),
            ),
      headerParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size5),

      /// Display details of the request params
      headerParams.isEmpty
          ? SizedBox()
          : requestParamsItems(context, headerParams),

      /// ............................
      /// Request Cookies section
      /// ............................
      cookieParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size15),

      /// Display "Request Cookies" text if the request exists
      cookieParams.isEmpty
          ? SizedBox()
          : SelectableText(
              Constants.requestCookiesTxt,
              style: TextStyle(
                /// Check the current light/dark theme mode
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.themeColor(context)
                    : ConstantsLightMode.themeColor(context),
                fontWeight: FontWeight.normal,
                fontSize: Constants.size15,
              ),
            ),
      cookieParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size5),

      /// Display details of the request params
      cookieParams.isEmpty
          ? SizedBox()
          : requestParamsItems(context, cookieParams),

      /// ............................
      /// Request Body section
      /// ............................
      item.request.body.isEmpty
          ? SizedBox()
          : SizedBox(height: Constants.size15),

      /// Display "Request Body" text if the request body exists
      item.request.body.isEmpty
          ? SizedBox()
          : SelectableText(
              Constants.requestBodyTxt,
              style: TextStyle(
                /// Check the current light/dark theme mode
                color: themeState.isDarkMode
                    ? ConstantsDarkMode.themeColor(context)
                    : ConstantsLightMode.themeColor(context),
                fontWeight: FontWeight.normal,
                fontSize: Constants.size15,
              ),
            ),
      item.request.body.isEmpty
          ? SizedBox()
          : SizedBox(height: Constants.size5),

      /// Display details of the request body
      item.request.body.isEmpty
          ? SizedBox()
          : requestBodyItems(context, item.request.body),
    ],
  );
}

/// End of code
