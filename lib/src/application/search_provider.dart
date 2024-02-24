import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../api_guide.dart';

/// Define [searchKeyProvider] with default value of ''
final searchKeyProvider = StateProvider<String>((ref) => '');

/// Define [isOpenSearchProvider] with default value of false
final isOpenSearchProvider = StateProvider<bool>((ref) => false);

/// Define [isHoveredIntroProvider] with default value of false
final isHoveredIntroProvider = StateProvider<bool>((ref) => false);

/// Define [isHoveredFaqsProvider] with default value of false
final isHoveredFaqsProvider = StateProvider<bool>((ref) => false);

/// Define [searchItemsProvider] with default value of []
final searchItemsProvider = StateProvider<List<String>>((ref) => []);

/// Define [updateSearchItems] function which update
/// the list of [_searchItems] values
updateSearchItems(List<String> val, WidgetRef ref) {
  /// Update the value of [_searchItems]
  ref.read(searchItemsProvider.notifier).state = val;
}

/// Define [addToSearchItems] function which update
/// the list of [_searchItems] values
addToSearchItems(String val, WidgetRef ref) {
  /// Add the value to the [_searchItems]
  ref.read(searchItemsProvider.notifier).state.add(val);
}
