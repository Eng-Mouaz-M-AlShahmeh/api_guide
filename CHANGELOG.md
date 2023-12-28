## [1.1.4] - 2023/12/28

* Add markdown dependency.
* Fix Emoji issue.
* Fix markdown colorScheme.
* Add markdown code style.

## [1.1.3] - 2023/12/28

* Import flutter_markdown package with the version of ^0.6.18+2.
* Add markdown_widget helper to add markdown functionality.
* Add at Constants class (size500, size600, size800, size1000, size1500, size2500, size4000, size5000, size8000 and size10000) attributes.
* Add at Constants class the markdownTextStyle and markdownTextStyleBodyMedium from type of TextStyle and markdownTextTheme from type of TextTheme.
* Add the markdown functionality at (Introduction section, API items' description and FAQ answers).

## [1.1.2] - 2023/12/06

* Fix the Found no Flutter in your PATH. Could not determine the current Flutter version. 

## [1.1.1] - 2023/11/25

* Fix add function by making params as not immutable. 
* Update example code.

## [1.1.0] - 2023/11/24

* Remove unnecessary lints dependencies.
* Update example code.
* Make APIServer class constructor as const.
* Add SecuritySchemeType enum which supports common 19 standard types.
* Add APISecurityScheme domain class.
* Add isSecurityItem bool attribute to APIGuideParam to check functionality of security schemes.
* Update the updateAPIItemAndKeys application function to make isSecurityItem value not affecting the left side api items.
* Add updateAPIItemWithSecurity application function.
* Enhance the appearance of the api item right section.
* Add Security section at the right of the api item.
* Add hint if the security is optional at the api item.
* Update faq item is expanded function.
* Add security_item presentation function.

## [1.0.17] - 2023/11/18

* Remove urlHost attribute from display functions from interface, implementation and main screen.
* Add APIServer domain class with urlHost String and optional title String.
* Pass new List of the APIServer attribute instead of urlHost.
* Update example code by updating servers attribute.

## [1.0.16] - 2023/11/18

* Fix empty values for introduction, api items and faq sections at body and navigators.
* Fix empty values at search dialog.
* Fix Params items responsiveness.
* Add isDeprecated and isInternal bool attributes to the APIItem domain class.
* Add optional warning deprecated and info internal icons at the api item header with tooltip on hover.

## [1.0.15] - 2023/11/17

* Add explanatory comments.
* Add needed constructors.

## [1.0.14] - 2023/11/17

* Add explanatory comments.
* Add needed constructors.

## [1.0.13] - 2023/11/17

* Remove unnecessary import of dart:io
* Add explanatory comments.

## [1.0.12] - 2023/11/17

* Fix designs at api card header, api card sample code header, api card params and body request, and footer links.
* Fix search result item fixed length of item description.
* Fix search dialog results scrolling.
* Update provider package to the version 6.1.1.
* Update flutter_lints to the version 3.0.1.

## [1.0.11] - 2023/11/14

* Enhance version shape with fixed one decimal after comma.
* Enhance app bar shape at large screens.
* Enhance Navigator shape with optional contact email footer.
* Fix navigation to the same path but different http methods.
* Add SPDXLicenceType enums which support 400+ types.
* Add SPDX Licence Type optional footer link.
* Add Contact optional footer link.
* Add sendEmail helper function.
* Add Contact optional footer email.

## [1.0.10] - 2023/11/12

* Update param domain class with needed attributes.
* Add ParameterType enum.
* Update sample code helper classes.
* Remove unnecessary headers from request class and merge with params.
* Make SampleCodePureTypes class as @immutable class.
* Update presentation of request api item details by params.
* Fix Closure and Obj-C request body sample code attributes.
* Add Query Params to sample code.
* Add Path Params dynamically to API Item header card path URL.
* Add Path Params to sample code.
* Update example code.

## [1.0.9] - 2023/11/09

* Enhance responsiveness at small screens.
* Update control search icon shortcut on windows platform.
* Remove unnecessary widgets from FAQs section and search dialog.
* Handle Esc key when close sample code dialog.
* Add @immutable annotation to proper domain and constant classes.

## [1.0.8] - 2023/11/08

* Fix Privacy and Terms link clicks.
* Enhance sample code button appearance.
* Enhance performance issues.
* Add optional theme color swatches from 14 color pallets.
* Import provider with version 6.0.5 package and enhance state management. 
* Add explanatory comments.

## [1.0.7] - 2023/11/03

* Add explanatory comments.
* Fix Windows Ctrl key listener.
* Make all texts as a selectable.

## [1.0.6] - 2023/11/03

* Fix the API Guide header theme switch.
* Fix the return back from the main API Guide widget by wrapping with WillPopScope .

## [1.0.5] - 2023/11/03

* Fix sample code snippets to expand to the width.
* Fix API Item header at small screens.
* Fix FAQs title at small screens.
* Lightening the background color of the sample code.
* Fix responses to expand to the width.
* Reduce navigation functions to one and call everywhere.
* Add responsive search widget to search the API integration guide.
* Update example code by updating const positions.
* Update APIItem class model by adding isHovered attribute.
* Add explanatory comments.

## [1.0.4] - 2023/10/30

* Import url_launcher with version 6.2.1 package.
* Add Privacy & Policy and Terms of Use optional footer links.

## [1.0.3] - 2023/10/27

* Add explanatory comments.
* Add theme light / dark mode feature.


## [1.0.2] - 2023/10/21

* Justify Introduction text.
* Justify FAQs answer text.
* Update MyHomePage at example by new super key way.
* Update example flutter_lints to 3.0.0
* Update library flutter_lints to 3.0.0
* Update lints to 3.0.0
* Remove unused cupertino_icons at example pubspec.yaml

## [1.0.1] - 2023/10/19

* Initial release of package and example project.
