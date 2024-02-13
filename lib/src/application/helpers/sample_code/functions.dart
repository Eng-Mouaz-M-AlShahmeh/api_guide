import 'dart:convert';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [provider] package files
import 'package:provider/provider.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [SampleCode] class
class SampleCodeFunctions {
  /// Define [SampleCodeFunctions] constructor
  SampleCodeFunctions();

  /// Define function to get the final prepared sample code
  String getFinalSampleCode(
    /// BuildContext
    BuildContext context,

    /// API Item
    APIItem item,
  ) {
    /// AppNotifierProvider to check theme attributes' states
    final appState = context.read<AppProvider>();

    /// List of Request Path Params
    final pathParams = item.request.params
        .where((e) => e.parameterType == ParameterType.path)
        .toList();

    /// List of Request Query Params
    final queryParams = item.request.params
        .where((e) => e.parameterType == ParameterType.query)
        .toList();

    /// List of Request Headers
    final headerParams = item.request.params
        .where((e) => e.parameterType == ParameterType.header)
        .toList();

    /// Function to replace path parameters in a given path template
    String replacePathParams(
        String pathTemplate, List<APIGuideParam> pathParams) {
      /// Iterate over the parameters and replace each occurrence in the path template
      pathParams
          .map((e) =>
              pathTemplate = pathTemplate.replaceAll('{${e.key}}', e.value))
          .join('');

      /// Return the path template with replaced parameters
      return pathTemplate;
    }

    /// Define the sample code and check the list of path params
    final sampleCodePath = pathParams.isEmpty
        ? item.urlPath
        : replacePathParams(item.urlPath, pathParams);

    /// Show the final sample code related
    /// to default type property
    return getSampleCode(
      chooseCodeType(appState.sampleCodeType),
      [
        /// {0} Method Name
        item.request.method.name,

        /// {1} URL Host
        appState.selectedAPIServer.urlHost,

        /// {2} URL Path
        pathParams.isEmpty
            ? item.urlPath
            : '$sampleCodePath${pathParams.map((e) => item.urlPath.contains(e.key) ? '' : '/${e.value}').join('')}',

        /// {3} Request Body with join ","
        item.request.body.map((e) => '"${e.key}":"${e.value}"').join(', '),

        /// {4} "?" sign
        queryParams.isEmpty ? '' : '?',

        /// {5} Request Query Params with join "&"
        queryParams.map((e) => '${e.key}=${e.value}').join('&'),

        /// {6} Request Query Params with join ","
        queryParams.map((e) => '"${e.key}":"${e.value}"').join(', '),

        /// {7} ":" sign
        queryParams.isEmpty ? '' : ':',

        /// {8} Request Query Params with join ":"
        queryParams.map((e) => '${e.key} "${e.value}"').join(': '),

        /// {9} ":" sign
        item.request.body.isEmpty ? '' : ':',

        /// {10} Request Body with join ":"
        item.request.body.map((e) => '${e.key} "${e.value}"').join(': '),

        /// {11} Request Headers with join "\\ \n"
        headerParams
            .map((e) => '--header\'${e.key}: ${e.value} \'')
            .join('\\ \n'),

        /// {12} Request Headers with join "\\ \n"
        headerParams.map((e) => '${e.key}: ${e.value}').join('\\ \n'),

        /// {13} "\\" sign
        headerParams.isEmpty ? '' : '\\',

        /// {14} "," sign
        headerParams.isEmpty ? '' : ',',

        /// {15} Request Headers with join ", "
        headerParams.map((e) => '${e.key}: \'${e.value}\'').join(', \n'),

        /// {16} Request Headers with join "\n"
        headerParams
            .map((e) => 'xhr.setRequestHeader(\'${e.key}\', \'${e.value}\');')
            .join('\n'),

        /// {17} Request Headers with join ","
        headerParams.map((e) => '\'${e.key}\': "${e.value}"').join(', '),

        /// {18} Request Headers with join ","
        headerParams.map((e) => '"${e.key}": "${e.value}"').join(', \n'),

        /// {19} Request Headers with join "\n"
        headerParams
            .map((e) => 'req.Header.Add("${e.key}", "${e.value}")')
            .join('\n'),

        /// {20} Request Headers with join "\n"
        headerParams
            .map((e) =>
                'headers = curl_slist_append(headers, "${e.key}: ${e.value}");')
            .join('\n'),

        /// {21} Request Headers with join ", "
        headerParams.map((e) => '@"${e.key}": @"${e.value}"').join(', \n'),

        /// {22} Request Body with join ", "
        item.request.body.map((e) => '@"${e.key}": @"${e.value}"').join(', \n'),

        /// {23} Request Headers with join "\n"
        headerParams.map((e) => '("${e.key}", "${e.value}");').join('\n'),

        /// {24} Request Headers with join ", "
        headerParams.map((e) => '{ "${e.key}", "${e.value}" }').join(', \n'),

        /// {25} Request Headers with join "\n"
        headerParams
            .map((e) => 'request.AddHeader("${e.key}", "${e.value}");')
            .join('\n'),

        /// {26} Request Headers with join "\n"
        headerParams
            .map((e) => '.setHeader("${e.key}", "${e.value}")')
            .join('\n'),

        /// {27} Request Headers with join "\n"
        headerParams.map((e) => '.header("${e.key}", "${e.value}")').join('\n'),

        /// {28} Request Headers with join "\n"
        headerParams
            .map((e) => '.addHeader("${e.key}", "${e.value}")')
            .join('\n'),

        /// {29} Request Headers with join "\n"
        headerParams.map((e) => '${e.key}: ${e.value}').join('\n'),

        /// {30} Request Headers with join "\n"
        headerParams.map((e) => ':${e.key} "${e.value}"').join('\n'),

        /// {31} Request Headers with join ", \n"
        headerParams.map((e) => '\'${e.key}\' => \'${e.value}\'').join(', \n'),

        /// {32} Request Headers with join "\n"
        headerParams
            .map((e) => '\$headers.Add("${e.key}", "${e.value}")')
            .join('\n'),

        /// {33} Request Headers with join ", "
        headerParams.map((e) => '\'${e.key}\' = \'${e.value}\'').join(', '),

        /// {34} Request Headers with join "\n"
        headerParams
            .map((e) => 'request["${e.key}"] = \'${e.value}\'')
            .join('\n'),
      ],
    );
  }

  /// Define function to prepare the response json code
  String getResponseCode(
    /// The code we want to make changes over it
    Map<String, dynamic> data,
  ) {
    /// Encode [data] as a json data
    /// Adjust the number of spaces for indentation.
    final encoder = JsonEncoder.withIndent('  ');

    /// Return the final response code
    return encoder.convert(data);
  }

  /// Define function to replace the code values to specifies ones
  String getSampleCode(
    /// The code we want to make changes over it
    String input,

    /// Our new values to put into the code
    List<String> replacements,
  ) {
    /// Make some loop into the code
    for (int i = 0; i < replacements.length; i++) {
      /// Define the placeholder to make changes in its positions
      final placeholder = '{$i}';

      /// Make the replace function
      input = input.replaceAll(placeholder, replacements[i]);
    }

    /// Return the final code with actual values
    return input;
  }

  /// Define a function to get the code type
  String chooseCodeType(
    /// The type of code
    String defaultType,
  ) {
    /// The core code sample
    String codeSampleCore;

    /// Check the value of defaultType and select the appropriate code sample
    switch (defaultType) {
      /// Shell/cURL
      case 'Shell/cURL':

        /// Set the code sample to shellCURL
        codeSampleCore = SampleCodePureTypes().shellCURL;

        /// Then break the loop
        break;

      /// Shell/HTTPie
      case 'Shell/HTTPie':

        /// Set the code sample to shellHTTPie
        codeSampleCore = SampleCodePureTypes().shellHTTPie;

        /// Then break the loop
        break;

      /// Shell/Wget
      case 'Shell/Wget':

        /// Set the code sample to shellWget
        codeSampleCore = SampleCodePureTypes().shellWget;

        /// Then break the loop
        break;

      /// JavaScript/Fetch
      case 'JavaScript/Fetch':

        /// Set the code sample to javascriptFetch
        codeSampleCore = SampleCodePureTypes().javascriptFetch;

        /// Then break the loop
        break;

      /// JavaScript/XMLHttpRequest
      case 'JavaScript/XMLHttpRequest':

        /// Set the code sample to javascriptXMLHttpRequest
        codeSampleCore = SampleCodePureTypes().javascriptXMLHttpRequest;

        /// Then break the loop
        break;

      /// JavaScript/jQuery
      case 'JavaScript/jQuery':

        /// Set the code sample to javascriptJQuery
        codeSampleCore = SampleCodePureTypes().javascriptJQuery;

        /// Then break the loop
        break;

      /// JavaScript/Axios
      case 'JavaScript/Axios':

        /// Set the code sample to javascriptAxios
        codeSampleCore = SampleCodePureTypes().javascriptAxios;

        /// Then break the loop
        break;

      /// Node/Native
      case 'Node/Native':

        /// Set the code sample to nodeNative
        codeSampleCore = SampleCodePureTypes().nodeNative;

        /// Then break the loop
        break;

      /// Node/Request
      case 'Node/Request':

        /// Set the code sample to nodeRequest
        codeSampleCore = SampleCodePureTypes().nodeRequest;

        /// Then break the loop
        break;

      /// Node/Unirest
      case 'Node/Unirest':

        /// Set the code sample to nodeUnirest
        codeSampleCore = SampleCodePureTypes().nodeUnirest;

        /// Then break the loop
        break;

      /// Node/Fetch
      case 'Node/Fetch':

        /// Set the code sample to nodeFetch
        codeSampleCore = SampleCodePureTypes().nodeFetch;

        /// Then break the loop
        break;

      /// Node/Axios
      case 'Node/Axios':

        /// Set the code sample to nodeAxios
        codeSampleCore = SampleCodePureTypes().nodeAxios;

        /// Then break the loop
        break;

      /// Python/Python 3
      case 'Python/Python 3':

        /// Set the code sample to pythonPython3
        codeSampleCore = SampleCodePureTypes().pythonPython3;

        /// Then break the loop
        break;

      /// Python/Python Requests
      case 'Python/Python Requests':

        /// Set the code sample to pythonPythonRequests
        codeSampleCore = SampleCodePureTypes().pythonPythonRequests;

        /// Then break the loop
        break;

      /// Go
      case 'Go':

        /// Set the code sample to go
        codeSampleCore = SampleCodePureTypes().go;

        /// Then break the loop
        break;

      /// C
      case 'C':

        /// Set the code sample to c
        codeSampleCore = SampleCodePureTypes().c;

        /// Then break the loop
        break;

      /// Obj-c
      case 'Obj-c':

        /// Set the code sample to objC
        codeSampleCore = SampleCodePureTypes().objC;

        /// Then break the loop
        break;

      /// OCaml
      case 'OCaml':

        /// Set the code sample to oCaml
        codeSampleCore = SampleCodePureTypes().oCaml;

        /// Then break the loop
        break;

      /// C#/HttpClient
      case 'C#/HttpClient':

        /// Set the code sample to cSharpHttpClient
        codeSampleCore = SampleCodePureTypes().cSharpHttpClient;

        /// Then break the loop
        break;

      /// C#/RestSharp
      case 'C#/RestSharp':

        /// Set the code sample to cSharpRestSharp
        codeSampleCore = SampleCodePureTypes().cSharpRestSharp;

        /// Then break the loop
        break;

      /// Java/AsyncHttp
      case 'Java/AsyncHttp':

        /// Set the code sample to javaAsyncHttp
        codeSampleCore = SampleCodePureTypes().javaAsyncHttp;

        /// Then break the loop
        break;

      /// Java/NetHttp
      case 'Java/NetHttp':

        /// Set the code sample to javaNetHttp
        codeSampleCore = SampleCodePureTypes().javaNetHttp;

        /// Then break the loop
        break;

      /// Java/OkHttp
      case 'Java/OkHttp':

        /// Set the code sample to javaOkHttp
        codeSampleCore = SampleCodePureTypes().javaOkHttp;

        /// Then break the loop
        break;

      /// Java/Unirest
      case 'Java/Unirest':

        /// Set the code sample to javaUnirest
        codeSampleCore = SampleCodePureTypes().javaUnirest;

        /// Then break the loop
        break;

      /// Http
      case 'Http':

        /// Set the code sample to http
        codeSampleCore = SampleCodePureTypes().http;

        /// Then break the loop
        break;

      /// Clojure
      case 'Clojure':

        /// Set the code sample to clojure
        codeSampleCore = SampleCodePureTypes().clojure;

        /// Then break the loop
        break;

      /// Kotlin
      case 'Kotlin':

        /// Set the code sample to kotlin
        codeSampleCore = SampleCodePureTypes().kotlin;

        /// Then break the loop
        break;

      /// PHP/pecl/http 1
      case 'PHP/pecl/http 1':

        /// Set the code sample to phpPeclHttp1
        codeSampleCore = SampleCodePureTypes().phpPeclHttp1;

        /// Then break the loop
        break;

      /// PHP/pecl/http 2
      case 'PHP/pecl/http 2':

        /// Set the code sample to phpPeclHttp2
        codeSampleCore = SampleCodePureTypes().phpPeclHttp2;

        /// Then break the loop
        break;

      /// PHP/cURL
      case 'PHP/cURL':

        /// Set the code sample to phpCURL
        codeSampleCore = SampleCodePureTypes().phpCURL;

        /// Then break the loop
        break;

      /// Powershell/WebRequest
      case 'Powershell/WebRequest':

        /// Set the code sample to powershellWebRequest
        codeSampleCore = SampleCodePureTypes().powershellWebRequest;

        /// Then break the loop
        break;

      /// Powershell/RestMethod
      case 'Powershell/RestMethod':

        /// Set the code sample to powershellRestMethod
        codeSampleCore = SampleCodePureTypes().powershellRestMethod;

        /// Then break the loop
        break;

      /// R
      case 'R':

        /// Set the code sample to r
        codeSampleCore = SampleCodePureTypes().r;

        /// Then break the loop
        break;

      /// Ruby
      case 'Ruby':

        /// Set the code sample to ruby
        codeSampleCore = SampleCodePureTypes().ruby;

        /// Then break the loop
        break;

      /// Swift
      case 'Swift':

        /// Set the code sample to swift
        codeSampleCore = SampleCodePureTypes().swift;

        /// Then break the loop
        break;

      /// If none of the above cases match
      default:

        /// Set the code sample to shellCURL
        codeSampleCore = SampleCodePureTypes().shellCURL;
    }

    /// Return the final code type
    return codeSampleCore;
  }

  /// Define function to replace the code values to specifies ones
  final List<String> types = <String>[
    /// List Item Option Code Sample to choose from
    'Shell/cURL',

    /// List Item Option Code Sample to choose from
    'Shell/HTTPie',

    /// List Item Option Code Sample to choose from
    'Shell/Wget',

    /// List Item Option Code Sample to choose from
    'JavaScript/Fetch',

    /// List Item Option Code Sample to choose from
    'JavaScript/XMLHttpRequest',

    /// List Item Option Code Sample to choose from
    'JavaScript/jQuery',

    /// List Item Option Code Sample to choose from
    'JavaScript/Axios',

    /// List Item Option Code Sample to choose from
    'Node/Native',

    /// List Item Option Code Sample to choose from
    'Node/Request',

    /// List Item Option Code Sample to choose from
    'Node/Unirest',

    /// List Item Option Code Sample to choose from
    'Node/Fetch',

    /// List Item Option Code Sample to choose from
    'Node/Axios',

    /// List Item Option Code Sample to choose from
    'Python/Python 3',

    /// List Item Option Code Sample to choose from
    'Python/Python Requests',

    /// List Item Option Code Sample to choose from
    'Go',

    /// List Item Option Code Sample to choose from
    'C',

    /// List Item Option Code Sample to choose from
    'Obj-c',

    /// List Item Option Code Sample to choose from
    'OCaml',

    /// List Item Option Code Sample to choose from
    'C#/HttpClient',

    /// List Item Option Code Sample to choose from
    'C#/RestSharp',

    /// List Item Option Code Sample to choose from
    'Java/AsyncHttp',

    /// List Item Option Code Sample to choose from
    'Java/NetHttp',

    /// List Item Option Code Sample to choose from
    'Java/OkHttp',

    /// List Item Option Code Sample to choose from
    'Java/Unirest',

    /// List Item Option Code Sample to choose from
    'Http',

    /// List Item Option Code Sample to choose from
    'Clojure',

    /// List Item Option Code Sample to choose from
    'Kotlin',

    /// List Item Option Code Sample to choose from
    'PHP/pecl/http 1',

    /// List Item Option Code Sample to choose from
    'PHP/pecl/http 2',

    /// List Item Option Code Sample to choose from
    'PHP/cURL',

    /// List Item Option Code Sample to choose from
    'Powershell/WebRequest',

    /// List Item Option Code Sample to choose from
    'Powershell/RestMethod',

    /// List Item Option Code Sample to choose from
    'R',

    /// List Item Option Code Sample to choose from
    'Ruby',

    /// List Item Option Code Sample to choose from
    'Swift',
  ];
}
