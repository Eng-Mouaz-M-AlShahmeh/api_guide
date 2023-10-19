/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideSampleCode extends StatefulWidget {
  const APIGuideSampleCode({
    /// Super key for the widget
    super.key,

    /// API item for which to display the sample code
    required this.item,

    /// Host URL for the API
    required this.urlHost,
  });

  /// API item for which to display the sample code
  final APIItem item;

  /// Host URL for the API
  final String urlHost;

  @override
  State<APIGuideSampleCode> createState() => _APIGuideSampleCodeState();
}

class _APIGuideSampleCodeState extends State<APIGuideSampleCode> {
  /// Default code type
  String defaultType = SampleCode().types.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              /// Flex for sample code text
              flex: Constants.flex1,
              child: Text(
                Constants.sampleCodeTxt,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Constants.indigoColor,
                  fontSize: Constants.size14,
                ),
              ),
            ),
            SizedBox(width: Constants.size10),
            Flexible(
              /// Flex for code type dropdown
              flex: Constants.flex5,
              child: DropdownButton<String>(
                value: defaultType,
                icon: const Icon(Constants.arrowDownSelectIcon),
                elevation: Constants.elevation10,
                style: TextStyle(
                  color: Constants.blackColor,
                  fontSize: Constants.size12,
                ),
                focusColor: Constants.greyLightColor,
                underline: Container(
                  height: Constants.size0,
                  color: Constants.greyColor,
                ),
                onChanged: (String? value) {
                  /// This is called when the user selects an item.
                  setState(() {
                    defaultType = value!;
                  });
                },

                /// Dropdown menu items
                items: SampleCode()
                    .types
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontSize: Constants.size12,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(width: Constants.size10),
            Flexible(
              /// Flex for copy icon
              flex: Constants.flex1,
              child: InkWell(
                onTap: () {
                  /// Copy Sample Code to Clipboard when click the icon
                  Clipboard.setData(
                    ClipboardData(
                      text: SampleCode().getSampleCode(
                        SampleCode().chooseCodeType(defaultType),
                        [
                          widget.item.request.method.name,
                          widget.urlHost,
                          widget.item.urlPath,
                          widget.item.request.body
                              .map((e) => '"${e.key}":"${e.value}"')
                              .join(', '),
                        ],
                      ),
                    ),
                  );

                  /// Show notification message by successful copy function
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(Constants.textCopiedTxt),
                  ));
                },
                child: Icon(
                  Constants.copyIcon,
                  size: Constants.size14,
                  color: Constants.indigoColor,
                ),
              ),
            ),
          ],
        ),
        Card(
          color: Constants.blackColor,
          child: Padding(
            padding: const EdgeInsets.all(Constants.size10),

            /// Make the sample code as selectable text
            child: SelectableText(
              /// Show the final sample code related to default type property
              SampleCode().getSampleCode(
                SampleCode().chooseCodeType(defaultType),
                [
                  widget.item.request.method.name,
                  widget.urlHost,
                  widget.item.urlPath,
                  widget.item.request.body
                      .map((e) => '"${e.key}":"${e.value}"')
                      .join(', '),
                ],
              ),
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: Constants.size12,
                  color: Constants.greenCodeColor),
            ),
          ),
        ),
      ],
    );
  }
}

/// End of code
