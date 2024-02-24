import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [apiGuideItemBodyEnd] function
Column apiGuideItemBodyEnd(
  /// WidgetRef
  WidgetRef ref,

  /// BuildContext
  BuildContext context,

  /// APIItem
  APIItem item,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      /// Display "Security" text if securitySchemes exist
      item.securitySchemes.isEmpty
          ? SizedBox()
          : subTitleArrowDouble(ref, Constants.securityTxt),

      /// Display id the item security is optional
      item.securitySchemes.isNotEmpty && item.isOptionalSecurity == true
          ? optionalSecurityHint(ref)
          : SizedBox(),

      /// Display each securitySchemes
      item.securitySchemes.isEmpty
          ? SizedBox()
          : Column(
              children: item.securitySchemes
                  .map((itemSecurityScheme) =>
                      securityItem(ref, itemSecurityScheme))
                  .toList(),
            ),

      /// Display the SizedBox if it securitySchemes exist
      item.securitySchemes.isEmpty
          ? SizedBox()
          : SizedBox(height: Constants.size30),

      /// Display sample code for the request
      sampleCodeItem(ref, context, item),
      SizedBox(height: Constants.size30),

      /// Display "Responses" text if responses exist
      item.response.isEmpty
          ? SizedBox()
          : subTitleArrowDouble(ref, Constants.responsesTxt),

      /// Display each response
      item.response.isEmpty
          ? SizedBox()
          : Column(
              children: item.response
                  .map((itemResponse) => responseItem(ref, itemResponse))
                  .toList(),
            ),
    ],
  );
}
