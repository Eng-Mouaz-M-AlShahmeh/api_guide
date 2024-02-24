import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [isDarkModeProvider] with default value of false
final isDarkModeProvider = StateProvider<bool>((ref) => false);

/// Define [themeColorProvider] with default value of indigo
final themeColorProvider =
    StateProvider<APIGuideThemeColor?>((ref) => APIGuideThemeColor.indigo);
