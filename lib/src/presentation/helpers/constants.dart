/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Code starts here

/// Start General Constants
class Constants {
  /// Start Icons Attributes

  /// Define [arrowDoubleNavIcon] attribute
  static const IconData arrowDoubleNavIcon = Icons.double_arrow_rounded;

  /// Define [arrowDownSelectIcon] attribute
  static const IconData arrowDownSelectIcon = Icons.arrow_drop_down;

  /// Define [copyIcon] attribute
  static const IconData copyIcon = Icons.copy;

  /// Define [menuIcon] attribute
  static const IconData menuIcon = Icons.menu;

  /// Define [lightIcon] attribute
  static const IconData lightIcon = Icons.light_mode;

  /// Define [darkIcon] attribute
  static const IconData darkIcon = Icons.dark_mode;

  /// End Icons Attributes

  /// Start Colors Attributes

  /// Define [orangeColor] attribute
  static const Color orangeColor = Colors.orange;

  /// Define [greenCodeColor] attribute
  static Color? greenCodeColor = Colors.green[600];

  /// Define [greyColor] attribute
  static const Color greyColor = Colors.grey;

  /// End Colors Attributes

  /// Start Colors Functions

  /// Define [getStatusColor] function which return Color
  /// from statusCode property
  static Color getStatusColor(int statusCode) {
    /// Check the value of defaultType and select the appropriate code sample
    switch (statusCode) {
      /// Information responses
      case >= 100 && < 200:

        /// Set the value to blue
        return Colors.blue;

      /// Successful responses
      case >= 200 && < 300:

        /// Set the value to green
        return Colors.green;

      /// Redirection messages
      case >= 300 && < 400:

        /// Set the value to orange
        return Colors.orange;

      /// Client error responses
      case >= 400 && < 500:

        /// Set the value to red
        return Colors.red;

      /// If none of the above cases match
      default:

        /// Set the default value to blue
        return Colors.orange;
    }
  }

  /// Define [getMethodColor] function which return Color
  /// from request http method name property
  static Color getMethodColor(String method) {
    /// Check the value of defaultType and select the appropriate code sample
    switch (method) {
      /// GET http request method
      case 'GET':

        /// Set the value to blue
        return Colors.blue;

      /// HEAD http request method
      case 'HEAD':

        /// Set the value to purple
        return Colors.purple;

      /// POST http request method
      case 'POST':

        /// Set the value to green
        return Colors.green;

      /// PUT http request method
      case 'PUT':

        /// Set the value to orange
        return Colors.orange;

      /// DELETE http request method
      case 'DELETE':

        /// Set the value to red
        return Colors.red;

      /// CONNECT http request method
      case 'CONNECT':

        /// Set the value to blue
        return Colors.blue;

      /// OPTIONS http request method
      case 'OPTIONS':

        /// Set the value to indigo
        return Colors.indigo;

      /// TRACE http request method
      case 'TRACE':

        /// Set the value to black
        return Colors.black;

      /// PATCH http request method
      case 'PATCH':

        /// Set the value to cyan
        return Colors.cyan;

      /// If none of the above cases match
      default:

        /// Set the default value to blue
        return Colors.blue;
    }
  }

  /// End Colors Functions

  /// Start Text Attributes

  /// Define [apiGuideTxt] attribute
  static const String apiGuideTxt = 'API Guide v.';

  /// Define [latestUpdateTxt] attribute
  static const String latestUpdateTxt = 'Latest Update ';

  /// Define [introTxt] attribute
  static const String introTxt = 'Introduction ';

  /// Define [faqsTxt] attribute
  static const String faqsTxt = 'Frequently Asked Questions (FAQs) ';

  /// Define [faqsShortTxt] attribute
  static const String faqsShortTxt = 'FAQs ';

  /// Define [rightsTxt] attribute
  static const String rightsTxt = 'All Rights Reserved ©';

  /// Define [textCopiedTxt] attribute
  static const String textCopiedTxt = 'Sample Code copied to clipboard.';

  /// Define [responsesTxt] attribute
  static const String responsesTxt = 'Responses ';

  /// Define [requestBodyTxt] attribute
  static const String requestBodyTxt = 'Request Body ';

  /// Define [sampleCodeTxt] attribute
  static const String sampleCodeTxt = 'Sample Code ';

  /// Define [privacyTxt] attribute
  static const String privacyTxt = 'Privacy & Policy';

  /// Define [termsTxt] attribute
  static const String termsTxt = 'Terms of Use';

  /// Define [lineTxt] attribute
  static const String lineTxt =
      ' ............................................................ ';

  /// Define [requiredTxt] attribute
  static const String requiredTxt = ' {required} ';

  /// Define [emptyTxt] attribute
  static const String emptyTxt = '';

  /// Define [dividerTxt] attribute
  static const String dividerTxt = ' | ';

  /// End Text Attributes

  /// Start Break Points Attributes

  /// Define [largeBreakPoint] attribute
  static const double largeBreakPoint = 1500;

  /// Define [smallBreakPoint] attribute
  static const double smallBreakPoint = 1100;

  /// End Break Points Attributes

  /// Start Sizes Attributes

  /// Define [size50] attribute
  static const double size50 = 50;

  /// Define [size30] attribute
  static const double size30 = 30;

  /// Define [size22] attribute
  static const double size22 = 22;

  /// Define [size20] attribute
  static const double size20 = 20;

  /// Define [size15] attribute
  static const double size15 = 15;

  /// Define [size14] attribute
  static const double size14 = 14;

  /// Define [size13] attribute
  static const double size13 = 13;

  /// Define [size12] attribute
  static const double size12 = 12;

  /// Define [size10] attribute
  static const double size10 = 10;

  /// Define [size5] attribute
  static const double size5 = 5;

  /// Define [size0] attribute
  static const double size0 = 0;

  /// End Sizes Attributes

  /// Start Flex Ratios Attributes

  /// Define [flex1] attribute
  static const int flex1 = 1;

  /// Define [flex2] attribute
  static const int flex2 = 2;

  /// Define [flex3] attribute
  static const int flex3 = 3;

  /// Define [flex5] attribute
  static const int flex5 = 5;

  /// Define [flex8] attribute
  static const int flex8 = 8;

  /// Define [flex10] attribute
  static const int flex10 = 10;

  /// End Flex Ratios Attributes

  /// Start Elevations Attributes

  /// Define [elevation10] attribute
  static const int elevation10 = 10;

  /// End Elevations Attributes

  /// Start Durations Attributes

  /// Define [duration1] attribute
  static const int duration1 = 1;

  /// End Durations Attributes
}

/// End General Constants

/// Start Light Mode
class ConstantsLightMode {
  /// Start Colors Attributes

  /// Define [blackColor] attribute
  static const Color blackColor = Colors.black87;

  /// Define [whiteColor] attribute
  static const Color whiteColor = Colors.white;

  /// Define [indigoColor] attribute
  static Color? indigoColor = Colors.indigo[600];

  /// Define [indigoLightColor] attribute
  static Color? indigoLightColor = Colors.indigo[100];

  /// Define [greyLightColor] attribute
  static Color? greyLightColor = Colors.grey[200];

  /// End Colors Attributes
}

/// End Light Mode

/// Start Dark Mode
class ConstantsDarkMode {
  /// Start Colors Attributes

  /// Define [blackColor] attribute
  static const Color blackColor = Colors.white;

  /// Define [whiteColor] attribute
  static const Color whiteColor = Colors.black;

  /// Define [indigoColor] attribute
  static Color? indigoColor = Colors.indigo[100];

  /// Define [indigoLightColor] attribute
  static Color? indigoLightColor = Colors.indigo[600];

  /// Define [greyLightColor] attribute
  static Color? greyLightColor = Colors.grey[900];

  /// End Colors Attributes
}

/// End Dark Mode

/// End of code
