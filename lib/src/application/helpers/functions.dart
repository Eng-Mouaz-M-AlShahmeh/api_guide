/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:url_launcher/url_launcher_string.dart';

/// Code starts here
class Functions {
  /// Define a function to open a URL
  openURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }
}

/// End of code
