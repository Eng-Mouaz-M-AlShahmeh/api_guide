/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Code starts here
/// Define [APIGuideFAQ] class
class APIGuideFAQ {
  /// Define [question] property as String and final
  final String question;

  /// Define [answer] property as String and final
  final String answer;

  /// Define [isExpanded] property as bool? and assign init value to true
  bool? isExpanded = true;

  /// Definition of [APIGuideFAQ] instance
  APIGuideFAQ({
    /// Use question property as required attribute
    required this.question,

    /// Use answer property as required attribute
    required this.answer,

    /// Use isExpanded property as optional attribute
    this.isExpanded,
  });
}

/// End of code
