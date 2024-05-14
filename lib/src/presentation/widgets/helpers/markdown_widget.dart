import 'package:flutter/material.dart';

/// Import [flutter_markdown] package files
import 'package:flutter_markdown/flutter_markdown.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [markdown] package files as md
import 'package:markdown/markdown.dart' as md;

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Markdown is a lightweight markup language that you can use to add
/// formatting elements to plaintext text documents.
/// Created by John Gruber in 2004, Markdown is now one of
/// the world’s most popular markup languages.
/// Using Markdown is different than using a WYSIWYG editor.
/// In an application like Microsoft Word, you click buttons
/// to format words and phrases, and the changes are visible immediately.
/// Markdown isn’t like that. When you create a Markdown-formatted file,
/// you add Markdown syntax to the text to indicate which words
/// and phrases should look different.
/// https://www.markdownguide.org/getting-started/
/// Markdown Widget from type of [SizedBox]
SizedBox markdownWidget(
  /// BuildContext
  BuildContext context,

  /// WidgetRef
  WidgetRef ref,

  /// Markdown Data
  String markdownData,

  /// Is Dark Mode
  bool isDarkMode,
) =>
    SizedBox(
      /// Take the screen available width
      width: MediaQuery.of(context).size.width,

      /// Check the [markdownData] content
      /// to make the height proper to the Markdown
      height: markdownData == Constants.emptyTxt
          ? Constants.size0
          : markdownData.length <= Constants.size300
              ? Constants.size100
              : markdownData.length <= Constants.size1500
                  ? Constants.size300
                  : markdownData.length <= Constants.size2500
                      ? Constants.size500
                      : markdownData.length <= Constants.size4000
                          ? Constants.size600
                          : markdownData.length <= Constants.size5000
                              ? Constants.size800
                              : markdownData.length <= Constants.size8000
                                  ? Constants.size1000
                                  : markdownData.length <= Constants.size10000
                                      ? Constants.size1500
                                      : Constants.size1500,
      child: Markdown(
        selectable: true,
        data: markdownData,
        styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
        styleSheet: MarkdownStyleSheet.fromTheme(
          /// Parse the Theme of context with api guide style.
          Theme.of(context).copyWith(

              /// Parse the Markdown Text Theme with isDarkMode attribute
              textTheme: Constants().markdownTextTheme(isDarkMode),

              /// Check the isDarkMode state
              colorScheme: ColorScheme(
                brightness: isDarkMode ? Brightness.dark : Brightness.light,
                surfaceContainer: isDarkMode
                    ? ConstantsDarkMode.greyLightColor!
                    : ConstantsLightMode.greyLightColor!,
                onSurfaceVariant: isDarkMode
                    ? ConstantsLightMode.greyLightColor!
                    : ConstantsDarkMode.greyLightColor!,
                error: ColorScheme.fromSwatch().error,
                onError: ColorScheme.fromSwatch().onError,
                secondary: isDarkMode
                    ? ConstantsDarkMode.themeColorLight(ref)!
                    : ConstantsLightMode.themeColorLight(ref)!,
                onSecondary: isDarkMode
                    ? ConstantsDarkMode.themeColor(ref)!
                    : ConstantsLightMode.themeColor(ref)!,
                surface: isDarkMode
                    ? ConstantsDarkMode.greyLightColor!
                    : ConstantsLightMode.greyLightColor!,
                onSurface: isDarkMode
                    ? ConstantsLightMode.greyLightColor!
                    : ConstantsDarkMode.greyLightColor!,
                primary: isDarkMode
                    ? ConstantsDarkMode.themeColor(ref)!
                    : ConstantsLightMode.themeColor(ref)!,
                onPrimary: isDarkMode
                    ? ConstantsDarkMode.themeColorLight(ref)!
                    : ConstantsLightMode.themeColorLight(ref)!,
              )),
        ),

        extensionSet: md.ExtensionSet(
          md.ExtensionSet.gitHubFlavored.blockSyntaxes,
          <md.InlineSyntax>[
            md.EmojiSyntax(),
            ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
          ],
        ),

        builders: {
          Constants.codeMarkdown: CodeElementBuilder(ref, isDarkMode),
        },

        /// Open the markdown link when tap
        onTapLink: (title, url, alt) => Functions().openURL(url!),
      ),
    );
