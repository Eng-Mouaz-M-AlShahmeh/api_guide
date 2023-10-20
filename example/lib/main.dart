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
      const APIItem(
        // Define the request for the first API item
        request: APIGuideRequest(
          method: HttpRequestMethod.GET,
          headers: [],
          params: [],
          body: [],
        ),
        // Define the response for the first API item
        response: [
          APIGuideResponse(
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
      const APIItem(
        // Define the request for the second API item
        request: APIGuideRequest(
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
          APIGuideResponse(
            statusCode: HttpResponseStatusCode.OK,
            headers: [],
            body: {
              "status": 200,
              "data": {
                "message": "Data Stored Successfully.",
              }
            },
          ),
          APIGuideResponse(
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
