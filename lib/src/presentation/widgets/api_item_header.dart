/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideItemHeader extends StatelessWidget {
  const APIGuideItemHeader({
    /// Super key for widget
    super.key,

    /// API item for which to display the header
    required this.item,

    /// Host URL for the API
    required this.urlHost,
  });

  /// API item for which to display the header
  final APIItem item;

  /// Host URL for the API
  final String urlHost;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Constants.indigoLightColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(Constants.size15),
          child: Row(
            children: [
              Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Constants.size20,
                  color: Constants.indigoColor,
                ),
              ),
              SizedBox(width: Constants.size15),
              ClipRRect(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.size10)),
                child: SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Constants.getMethodColor(item.request.method.name),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        Constants.size10,
                        Constants.size5,
                        Constants.size10,
                        Constants.size5,
                      ),
                      child: Text(
                        item.request.method.name,
                        style: TextStyle(
                          color: Constants.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.size13,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: Constants.size15),
              ClipRRect(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.size5)),
                child: SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Constants.greyLightColor),
                    child: Padding(
                      padding: const EdgeInsets.all(Constants.size5),

                      /// Display the URL
                      child: SelectableText(
                        '$urlHost${item.urlPath}',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: Constants.size15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// End of code
