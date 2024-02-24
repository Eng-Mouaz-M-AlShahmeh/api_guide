import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [apiGuideItemBodyStart] function
Column apiGuideItemBodyStart(
  /// WidgetRef
  WidgetRef ref,

  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  /// List of Request Path Params
  final pathParams = item.request.params
      .where((e) =>
          e.parameterType == ParameterType.path && e.isSecurityItem != true)
      .toList();

  /// List of Request Query Params
  final queryParams = item.request.params
      .where((e) =>
          e.parameterType == ParameterType.query && e.isSecurityItem != true)
      .toList();

  /// List of Request Headers
  final headerParams = item.request.params
      .where((e) =>
          e.parameterType == ParameterType.header && e.isSecurityItem != true)
      .toList();

  /// List of Request Cookies
  final cookieParams = item.request.params
      .where((e) =>
          e.parameterType == ParameterType.cookie && e.isSecurityItem != true)
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
          : markdownWidget(
              context,
              ref,
              item.description,
              isDarkMode,
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
          : subTitleArrowDouble(ref, Constants.requestPathParamsTxt),
      pathParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size5),

      /// Display details of the request params
      pathParams.isEmpty ? SizedBox() : requestParamsItems(ref, pathParams),

      /// ............................
      /// Request Query Params section
      /// ............................
      queryParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size15),

      /// Display "Request Query Params" text if the request exists
      queryParams.isEmpty
          ? SizedBox()
          : subTitleArrowDouble(ref, Constants.requestQueryParamsTxt),
      queryParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size5),

      /// Display details of the request params
      queryParams.isEmpty ? SizedBox() : requestParamsItems(ref, queryParams),

      /// ............................
      /// Request Headers section
      /// ............................
      headerParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size15),

      /// Display "Request Headers" text if the request exists
      headerParams.isEmpty
          ? SizedBox()
          : subTitleArrowDouble(ref, Constants.requestHeadersTxt),
      headerParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size5),

      /// Display details of the request params
      headerParams.isEmpty ? SizedBox() : requestParamsItems(ref, headerParams),

      /// ............................
      /// Request Cookies section
      /// ............................
      cookieParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size15),

      /// Display "Request Cookies" text if the request exists
      cookieParams.isEmpty
          ? SizedBox()
          : subTitleArrowDouble(ref, Constants.requestCookiesTxt),
      cookieParams.isEmpty ? SizedBox() : SizedBox(height: Constants.size5),

      /// Display details of the request params
      cookieParams.isEmpty ? SizedBox() : requestParamsItems(ref, cookieParams),

      /// ............................
      /// Request Body section
      /// ............................
      item.request.body.isEmpty
          ? SizedBox()
          : SizedBox(height: Constants.size15),

      /// Display "Request Body" text if the request body exists
      item.request.body.isEmpty
          ? SizedBox()
          : subTitleArrowDouble(ref, Constants.requestBodyTxt),
      item.request.body.isEmpty
          ? SizedBox()
          : SizedBox(height: Constants.size5),

      /// Display details of the request body
      item.request.body.isEmpty
          ? SizedBox()
          : requestBodyItems(ref, item.request.body),
    ],
  );
}
