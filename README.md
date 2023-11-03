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

## Screenshots

<img width="1420" alt="Example Screenshot" src="https://github.com/Eng-Mouaz-M-AlShahmeh/api_guide/assets/86870601/af08bc33-cdf0-4555-b85a-1bf037391c4c">

## About

- API Guide is package to generate API calls documentations like [OpenAPI schema](https://spec.openapis.org/oas/v3.1.0). For example, Get, Post, Put, Delete or Options Http requests and responses.

## API Integration Guide Features

* Generative code model covers more than 30 snippet code types.
* Possibility to copy sample code to the clipboard by clicking the button.
* Responsive design supports large, medium and small screens.
* Light and dark theme mode.
* Responsive and fast search widget.
* The beautiful introduction section can be modified as needed.
* The Infinite FAQ section can be modified with any number of questions and answers.
* Seamless scrollable sidebar.
* It appears clear by version and last update date.
* Optional Privacy Policy and Terms of Use API Integration Guide footer links.
* Built in accordance with [W3 Consortium](https://www.w3.org) and [OpenAPI Schema](https://spec.openapis.org/oas/v3.1.0) recommendations.

## Installation and Basic Usage

First: Add to pubspec.yaml:

```yaml
dependencies:
  api_guide: ^1.0.5
```

Second: import it to your project:

```dart
import 'package:api_guide/api_guide.dart';
```

Finally add **APIGuide().display()** into your target web pages with required parameters.

Here is a full usage example code:

```dart
// Developed by Mouaz M AlShahmeh
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
    // Define API Items with all needed properties
    List<APIItem> apiItems = [
      // Define the first API item
      APIItem(
        // Define the request for the first API item
        request: const APIGuideRequest(
          method: HttpRequestMethod.GET,
          headers: [],
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
        title: 'All Dashes',
        urlPath: '/dashes',
        description: 'All Dashes get example description.',
      ),
      // Define the second API item
      APIItem(
        // Define the request for the second API item
        request: const APIGuideRequest(
          method: HttpRequestMethod.POST,
          headers: [],
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
        title: 'Create',
        urlPath: '/create',
        description: 'Store Dash post example description.',
      ),
    ];

    // Define API FAQs items as needed
    List<APIGuideFAQ> apiFaqs = [
      APIGuideFAQ(
        question: 'Can Dash Fly?',
        answer: 'Yes, Dash can Fly.',
      ),
    ];

    // Use APIGuide package with display method and pass needed parameters
    return APIGuide().display(
      context: context,
      urlHost: 'https://example.com',
      apiItems: apiItems,
      apiFaqs: apiFaqs,
      version: 1.0,
      latestUpdate: DateTime.parse('2023-10-10'),
      apiIntro: 'This is some introduction to API Guide.',
    );
  }
}
```

## Thank you

Make sure to check out [example project](https://github.com/Eng-Mouaz-M-AlShahmeh/api_guide/tree/main/example).
If you find this package useful, star my GitHub [repository](https://github.com/Eng-Mouaz-M-AlShahmeh/api_guide).

Flutter plugin was developed by: [Eng. Mouaz M. Al-Shahmeh](https://twitter.com/mouaz_m_shahmeh)
