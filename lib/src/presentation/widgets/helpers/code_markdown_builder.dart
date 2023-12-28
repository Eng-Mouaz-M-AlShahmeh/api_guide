/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [flutter_markdown] package files
import 'package:flutter_markdown/flutter_markdown.dart';

/// Import [markdown] package files as md
import 'package:markdown/markdown.dart' as md;

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// [CodeElementBuilder] with extending the [MarkdownElementBuilder]
class CodeElementBuilder extends MarkdownElementBuilder {
  /// CodeElementBuilder constructor
  CodeElementBuilder(
    /// BuildContext
    this.context,

    /// Is Dark Mode
    this.isDarkMode,
  );

  /// BuildContext
  final BuildContext context;

  /// Is Dark Mode
  final bool isDarkMode;

  @override
  Widget? visitElementAfter(

      /// Element implements Node
      md.Element element,

      /// preferredStyle which copied from MarkdownElementBuilder
      TextStyle? preferredStyle) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.size8),

          /// Check the current light/dark theme mode
          color: isDarkMode ? Constants.greyColor : Constants.greyColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(Constants.size8),
          child: Text(
            /// The original code to be highlighted
            element.textContent,

            style: TextStyle(
              /// Check the current light/dark theme mode
              color: isDarkMode
                  ? ConstantsDarkMode.themeColorLight(context)
                  : ConstantsLightMode.themeColor(context),
            ),
          ),
        ),
      ),
    );
  }
}
