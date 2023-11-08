/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [url_launcher] package files
import 'package:url_launcher/url_launcher_string.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class Functions {
  /// Define a function to open a URL
  openURL(String url) async {
    /// Check if the url is valid
    if (await canLaunchUrlString(url)) {
      /// Use url launcher from String
      await launchUrlString(url);
    }
  }
}

/// End of code
