<p align="center">
<image src="https://github.com/Eng-Mouaz-M-AlShahmeh/api_guide/assets/86870601/5aed6940-253f-4f33-9e41-b8194ba1638b" height="150" alt="API Guide Package"/>
</p>

<p align="center">
<a href="https://pub.dev/packages/api_guide"><img src="https://img.shields.io/pub/v/api_guide.svg" alt="Pub"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>
</p>

---

# API Guide

Flutter package to generate API calls documentations like OpenAPI schema.

## Screenshots 💻

[![Example Screenshot](https://github.com/Eng-Mouaz-M-AlShahmeh/api_guide/assets/86870601/b186406e-6d29-4a5a-a232-d57080491112)](https://github.com/Eng-Mouaz-M-AlShahmeh/api_guide/assets/86870601/1d08356e-b1e6-49fb-a49b-2ce83246aa62)

## About ❓

- API Guide is package to generate API calls documentations like [OpenAPI schema](https://spec.openapis.org/oas/v3.1.0). For example, Get, Post, Put, Delete or Options Http requests and responses.

## Features ✨

* Possibility to copy sample code to the clipboard by clicking the button.
* Responsive design supports large, medium and small screens.
* Light and dark theme mode.
* Responsive and fast search tool with keystroke shortcuts.
* The beautiful introduction section can be modified as needed.
* The Infinite FAQ section can be modified with any number of questions and answers.
* Seamless scrollable sidebar.
* It appears clear by version and last update date.
* Optional Privacy Policy and Terms of Use API Integration Guide footer links.
* Generative code model covers 30+ snippet code types with multiple servers.
* Optional SPDX Licence API Integration Guide footer link with supporting of 400+ SPDX Licence types. 
* Optional variant to change the theme color supports 10+ color distributions.
* Supports 15+ web API standard security schemes.
* Built in accordance with [W3 Consortium](https://www.w3.org) recommendations, [OpenAPI Schema](https://spec.openapis.org/oas/v3.1.0) and [RFCs](https://www.ietf.org/standards/rfcs/) standards.

## Installation ⏳

① First: Add to pubspec.yaml:

```yaml
dependencies:
  api_guide: ^1.1.0
```

② Second: import it to your project:

```dart
import 'package:api_guide/api_guide.dart';
```

③ Finally add **APIGuide().display()** into your target web pages with required parameters.

## Usage ✅

Here is a full usage example code:

```dart
import 'package:api_guide/api_guide.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Create the main application widget
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter API Guide Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use APIGuide package with display method and pass needed parameters.
    return APIGuide().display(
      context: context,

      // Pass the API version as a double number.
      version: 1.0,

      // Pass the API last update as a DateTime.
      latestUpdate: DateTime.parse('2023-10-10'),

      // Pass the API introduction as a String.
      apiIntro: 'This is some introduction to API Guide.',

      // Pass the API Items List with all needed properties.
      apiItems: _apiItems,

      // Pass the API Servers as needed.
      servers: [
        const APIServer(
          urlHost: 'https://example.com',
        ),
      ],

      // Pass the API FAQs items as needed
      apiFaqs: [
        APIGuideFAQ(
          question: 'Can Dash Fly?',
          answer: 'Yes, Dash can Fly.',
        ),
      ],
    );
  }
}

// Define API Items with all needed properties
List<APIItem> _apiItems = [
  // Define the first API item
  APIItem(
    title: 'All Dashes',
    urlPath: '/dashes',
    description: 'All Dashes get example description.',
    securitySchemes: [],

    // Define the request for the first API item
    request: const APIGuideRequest(
      method: HttpRequestMethod.GET,
      params: [],
      body: [],
    ),

    // Define the response for the first API item
    response: [
      const APIGuideResponse(
        statusCode: HttpResponseStatusCode.OK,
        headers: [],
        body: {
          "status": 200,
          "data": {
            "name": "Dash",
            "isFly": true,
          }
        },
      ),
    ],
  ),

  // Define the second API item
  APIItem(
    title: 'Create',
    urlPath: '/create',
    description: 'Store Dash post example description.',
    securitySchemes: [],

    // Define the request for the second API item
    request: const APIGuideRequest(
      method: HttpRequestMethod.POST,
      params: [],
      body: [
        APIGuideRequestBody(
          key: 'name',
          value: 'Dash',
          type: PropertyType.string,
          description: 'This is the name attribute.',
          isRequired: true,
        ),
        APIGuideRequestBody(
          key: 'isFly',
          value: true,
          type: PropertyType.boolean,
          description: 'This is the isFly attribute.',
          isRequired: true,
        ),
      ],
    ),

    // Define the response for the second API item
    response: [
      const APIGuideResponse(
        statusCode: HttpResponseStatusCode.OK,
        headers: [],
        body: {
          "status": 200,
          "data": {
            "message": "Data Stored Successfully.",
          }
        },
      ),
      const APIGuideResponse(
        statusCode: HttpResponseStatusCode.BadRequest,
        headers: [],
        body: {
          "status": 400,
          "data": {
            "message": "Error Data Not Stored!",
          }
        },
      ),
    ],
  ),
];

```

## Notes 📝

* Set the [debugShowCheckedModeBanner] value to [false] to hide the top debug red ribbon at the [MaterialApp].
* If you add the [APIGuide().display()] widget inside the [Scaffold] widget make sure to put it inside the body only without the [appBar], [drawer], [floatingActionButton], [bottomNavigationBar] or [bottomSheet] because it has the Scaffold with all needed attributes as full page screen widget.
* The preferred way to adding [APIGuide().display()] is inside the [build] method as return value directly of the [StatelessWidget].
* If you do not set the [termsLink] or [privacyLink] it is not appear.
* If you do not set the [themeColor] it is automatic take the [APIGuideThemeColor.indigo] swatch palette color.
* There are many internal function attributes that do not affect the raw data that are passed as optional attributes and if passed do not affect the function because they are programmed to automatically change themselves as needed like [APIItem.isHovered], [APIItem.isOptionalSecurity], [APIGuideParam.isSecurityItem] and [APIGuideFAQ.isExpanded].

## Thank you 🎉

Make sure to check out [example project](https://github.com/Eng-Mouaz-M-AlShahmeh/api_guide/tree/main/example).
If you find this package useful, star my GitHub [repository](https://github.com/Eng-Mouaz-M-AlShahmeh/api_guide).

Flutter plugin was developed by: [Eng. Mouaz M. Al-Shahmeh](https://twitter.com/mouaz_m_shahmeh)
