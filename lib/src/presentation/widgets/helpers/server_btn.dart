import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Server Button of type [ElevatedButton]
ElevatedButton serverButton(
  /// WidgetRef
  WidgetRef ref,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return ElevatedButton(
    onPressed: () {
      /// Update the [updateIsOpenServer] when pressed the button
      ref.read(isOpenServerProvider.notifier).state = true;
    },
    style: ButtonStyle(
      side: WidgetStateProperty.all(
        BorderSide(
          color: isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
          width: Constants.size1,
        ),
      ),
      foregroundColor: WidgetStateProperty.all(
        isDarkMode
            ? ConstantsDarkMode.blackColor
            : ConstantsLightMode.blackColor,
      ),
      backgroundColor: WidgetStateProperty.all(
        isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(Constants.size8),
      child: Wrap(
        spacing: Constants.size2,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Constants.size0,
              Constants.size2,
              Constants.size0,
              Constants.size2,
            ),
            child: Icon(
              Constants.dnsIcon,
              size: Constants.size12,
              color: isDarkMode
                  ? ConstantsDarkMode.blackColor
                  : ConstantsLightMode.blackColor,
            ),
          ),
          Text(
            ref.read(selectedAPIServerProvider).title ?? Constants.liveTxt,
            style: TextStyle(
              fontSize: Constants.size12,
              color: isDarkMode
                  ? ConstantsDarkMode.blackColor
                  : ConstantsLightMode.blackColor,
            ),
          ),
        ],
      ),
    ),
  );
}

/// Server Dialog from type of [Dialog]
Dialog serverDialog(
  /// BuildContext
  BuildContext context,

  /// WidgetRef
  WidgetRef ref,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return Dialog(
    backgroundColor: Colors.transparent,
    child: SizedBox(
      /// Check for screens larger than [Constants.smallBreakPoint]
      width: MediaQuery.of(context).size.width <= Constants.smallBreakPoint
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * Constants.size05,
      child: DecoratedBox(
        decoration: BoxDecoration(
          /// Check the current light/dark theme mode
          color: isDarkMode
              ? ConstantsDarkMode.whiteColor
              : ConstantsLightMode.whiteColor,
          borderRadius: BorderRadius.circular(Constants.size8),
        ),
        child: Padding(
          padding: EdgeInsets.all(Constants.size25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      Constants.serversTxt,
                      style: TextStyle(
                        color: isDarkMode
                            ? ConstantsDarkMode.blackColor
                            : ConstantsLightMode.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: ref
                      .read(apiServerListProvider)
                      .map(
                        (item) => ListTile(
                          title: Wrap(
                            children: [
                              ref.watch(selectedAPIServerProvider).urlHost ==
                                      item.urlHost
                                  ? Icon(
                                      Constants.doneIcon,
                                      color: isDarkMode
                                          ? ConstantsDarkMode.blackColor
                                          : ConstantsLightMode.blackColor,
                                    )
                                  : SizedBox(),
                              Text(
                                item.title ?? Constants.liveTxt,
                                style: TextStyle(
                                  color: isDarkMode
                                      ? ConstantsDarkMode.blackColor
                                      : ConstantsLightMode.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            item.urlHost,
                            style: TextStyle(
                              color: isDarkMode
                                  ? ConstantsDarkMode.blackColor
                                  : ConstantsLightMode.blackColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          onTap: () {
                            /// Update the [selectedAPIServer]
                            /// when tap the item
                            ref.read(selectedAPIServerProvider.notifier).state =
                                item;

                            /// Update the [isOpenSampleCode]
                            /// when tap the item
                            ref.read(isOpenServerProvider.notifier).state =
                                false;
                          },
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: Constants.size15),
                closeServerDialogButton(ref),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
