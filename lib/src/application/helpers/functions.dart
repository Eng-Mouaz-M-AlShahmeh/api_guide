import 'package:url_launcher/url_launcher_string.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [Functions] class
class Functions {
  /// Define [Functions] constructor
  Functions();

  /// Define a function to open a URL
  openURL(String url) async {
    /// Check if the url is valid
    if (await canLaunchUrlString(url)) {
      /// Use url launcher from String
      await launchUrlString(url);
    }
  }

  /// Function to launch email
  sendEmail(String toEmail) async {
    /// Create a Uri with the 'mailto' scheme to launch the default email app
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',

      /// Set the recipient's email address
      path: toEmail,
    );

    /// Launch the prepared link
    openURL(emailLaunchUri.toString());
  }
}
