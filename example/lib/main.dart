// Developed by Eng. Mouaz M. Al-Shahmeh
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
    request: APIGuideRequest(
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
    request: APIGuideRequest(
      method: HttpRequestMethod.POST,
      params: [],
      body: [
        const APIGuideRequestBody(
          key: 'name',
          value: 'Dash',
          type: PropertyType.string,
          description: 'This is the name attribute.',
          isRequired: true,
        ),
        const APIGuideRequestBody(
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
