/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
class APIGuideFaqItems extends StatefulWidget {
  const APIGuideFaqItems({
    /// Constructor with parameters
    super.key,

    /// List of API FAQs
    required this.apiFaqsList,
  });

  /// List of API FAQs
  final List<APIGuideFAQ> apiFaqsList;

  @override
  State<APIGuideFaqItems> createState() => _APIGuideFaqItemsState();
}

class _APIGuideFaqItemsState extends State<APIGuideFaqItems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Constants.size15,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(Constants.size15),
            ),
            child: ExpansionPanelList(
              expansionCallback: (index, isExpanded) {
                /// Update the expansion state when a panel is clicked
                setState(() {
                  widget.apiFaqsList[index].isExpanded = isExpanded;
                });
              },

              /// List of API FAQs to be displayed
              children: widget.apiFaqsList
                  .map(
                    (item) => ExpansionPanel(
                      backgroundColor: Constants.greyLightColor,
                      canTapOnHeader: true,

                      /// Whether the panel is expanded or not
                      isExpanded: item.isExpanded ?? false,
                      headerBuilder: (context, isExpanded) => ListTile(
                        title: Text(
                          /// Display the FAQ question
                          item.question,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Constants.size15,
                            color: Constants.indigoColor,
                          ),
                        ),
                      ),
                      body: Padding(
                        padding: const EdgeInsets.all(Constants.size15),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                /// Display the FAQ answer
                                item.answer,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: Constants.size15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

/// End of code
