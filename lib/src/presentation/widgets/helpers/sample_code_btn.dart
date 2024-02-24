import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Sample Code Button of type [ElevatedButton]
ElevatedButton sampleCodeButton(
  /// WidgetRef
  WidgetRef ref,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return ElevatedButton(
    onPressed: () {
      /// Update the [isOpenSampleCode] when pressed the button
      ref.read(isOpenSampleCodeProvider.notifier).state = true;
    },
    style: ButtonStyle(
      side: MaterialStateProperty.all(
        BorderSide(
          color: isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
          width: Constants.size1,
        ),
      ),
      foregroundColor: MaterialStateProperty.all(
        isDarkMode
            ? ConstantsDarkMode.blackColor
            : ConstantsLightMode.blackColor,
      ),
      backgroundColor: MaterialStateProperty.all(
        isDarkMode
            ? ConstantsDarkMode.whiteColor
            : ConstantsLightMode.whiteColor,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(Constants.size8),
      child: Text(
        ref.read(sampleCodeTypeProvider),
        style: TextStyle(
          fontSize: Constants.size12,
          color: isDarkMode
              ? ConstantsDarkMode.blackColor
              : ConstantsLightMode.blackColor,
        ),
      ),
    ),
  );
}

/// Sample Code Dialog from type of [Dialog]
Dialog sampleCodeDialog(
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
          padding: EdgeInsets.all(Constants.size15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: SampleCodeFunctions()
                        .types
                        .map(
                          (item) => ListTile(
                            title: Text(
                              item,
                              style: TextStyle(
                                color: isDarkMode
                                    ? ConstantsDarkMode.blackColor
                                    : ConstantsLightMode.blackColor,
                              ),
                            ),
                            onTap: () {
                              /// Update the [sampleCodeType]
                              /// when tap the item
                              ref.read(sampleCodeTypeProvider.notifier).state =
                                  item;

                              /// Update the [isOpenSampleCode]
                              /// when tap the item
                              ref
                                  .read(isOpenSampleCodeProvider.notifier)
                                  .state = false;
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              SizedBox(height: Constants.size15),
              closeSampleCodeDialogButton(ref),
            ],
          ),
        ),
      ),
    ),
  );
}
