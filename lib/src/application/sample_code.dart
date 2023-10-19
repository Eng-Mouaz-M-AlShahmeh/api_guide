/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'dart:convert';

/// Code starts here
/// Define SampleCode class
class SampleCode {
  /// Definition of [SampleCode] instance
  SampleCode();

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
        codeSampleCore = shellCURL();

        /// Then break the loop
        break;

      /// Shell/HTTPie
      case 'Shell/HTTPie':

        /// Set the code sample to shellHTTPie
        codeSampleCore = shellHTTPie();

        /// Then break the loop
        break;

      /// Shell/Wget
      case 'Shell/Wget':

        /// Set the code sample to shellWget
        codeSampleCore = shellWget();

        /// Then break the loop
        break;

      /// JavaScript/Fetch
      case 'JavaScript/Fetch':

        /// Set the code sample to javascriptFetch
        codeSampleCore = javascriptFetch();

        /// Then break the loop
        break;

      /// JavaScript/XMLHttpRequest
      case 'JavaScript/XMLHttpRequest':

        /// Set the code sample to javascriptXMLHttpRequest
        codeSampleCore = javascriptXMLHttpRequest();

        /// Then break the loop
        break;

      /// JavaScript/jQuery
      case 'JavaScript/jQuery':

        /// Set the code sample to javascriptJQuery
        codeSampleCore = javascriptJQuery();

        /// Then break the loop
        break;

      /// JavaScript/Axios
      case 'JavaScript/Axios':

        /// Set the code sample to javascriptAxios
        codeSampleCore = javascriptAxios();

        /// Then break the loop
        break;

      /// Node/Native
      case 'Node/Native':

        /// Set the code sample to nodeNative
        codeSampleCore = nodeNative();

        /// Then break the loop
        break;

      /// Node/Request
      case 'Node/Request':

        /// Set the code sample to nodeRequest
        codeSampleCore = nodeRequest();

        /// Then break the loop
        break;

      /// Node/Unirest
      case 'Node/Unirest':

        /// Set the code sample to nodeUnirest
        codeSampleCore = nodeUnirest();

        /// Then break the loop
        break;

      /// Node/Fetch
      case 'Node/Fetch':

        /// Set the code sample to nodeFetch
        codeSampleCore = nodeFetch();

        /// Then break the loop
        break;

      /// Node/Axios
      case 'Node/Axios':

        /// Set the code sample to nodeAxios
        codeSampleCore = nodeAxios();

        /// Then break the loop
        break;

      /// Python/Python 3
      case 'Python/Python 3':

        /// Set the code sample to pythonPython3
        codeSampleCore = pythonPython3();

        /// Then break the loop
        break;

      /// Python/Python Requests
      case 'Python/Python Requests':

        /// Set the code sample to pythonPythonRequests
        codeSampleCore = pythonPythonRequests();

        /// Then break the loop
        break;

      /// Go
      case 'Go':

        /// Set the code sample to go
        codeSampleCore = go();

        /// Then break the loop
        break;

      /// C
      case 'C':

        /// Set the code sample to c
        codeSampleCore = c();

        /// Then break the loop
        break;

      /// Obj-c
      case 'Obj-c':

        /// Set the code sample to objC
        codeSampleCore = objC();

        /// Then break the loop
        break;

      /// OCaml
      case 'OCaml':

        /// Set the code sample to oCaml
        codeSampleCore = oCaml();

        /// Then break the loop
        break;

      /// C#/HttpClient
      case 'C#/HttpClient':

        /// Set the code sample to cSharpHttpClient
        codeSampleCore = cSharpHttpClient();

        /// Then break the loop
        break;

      /// C#/RestSharp
      case 'C#/RestSharp':

        /// Set the code sample to cSharpRestSharp
        codeSampleCore = cSharpRestSharp();

        /// Then break the loop
        break;

      /// Java/AsyncHttp
      case 'Java/AsyncHttp':

        /// Set the code sample to javaAsyncHttp
        codeSampleCore = javaAsyncHttp();

        /// Then break the loop
        break;

      /// Java/NetHttp
      case 'Java/NetHttp':

        /// Set the code sample to javaNetHttp
        codeSampleCore = javaNetHttp();

        /// Then break the loop
        break;

      /// Java/OkHttp
      case 'Java/OkHttp':

        /// Set the code sample to javaOkHttp
        codeSampleCore = javaOkHttp();

        /// Then break the loop
        break;

      /// Java/Unirest
      case 'Java/Unirest':

        /// Set the code sample to javaUnirest
        codeSampleCore = javaUnirest();

        /// Then break the loop
        break;

      /// Http
      case 'Http':

        /// Set the code sample to http
        codeSampleCore = http();

        /// Then break the loop
        break;

      /// Clojure
      case 'Clojure':

        /// Set the code sample to clojure
        codeSampleCore = clojure();

        /// Then break the loop
        break;

      /// Kotlin
      case 'Kotlin':

        /// Set the code sample to kotlin
        codeSampleCore = kotlin();

        /// Then break the loop
        break;

      /// PHP/pecl/http 1
      case 'PHP/pecl/http 1':

        /// Set the code sample to phpPeclHttp1
        codeSampleCore = phpPeclHttp1();

        /// Then break the loop
        break;

      /// PHP/pecl/http 2
      case 'PHP/pecl/http 2':

        /// Set the code sample to phpPeclHttp2
        codeSampleCore = phpPeclHttp2();

        /// Then break the loop
        break;

      /// PHP/cURL
      case 'PHP/cURL':

        /// Set the code sample to phpCURL
        codeSampleCore = phpCURL();

        /// Then break the loop
        break;

      /// Powershell/WebRequest
      case 'Powershell/WebRequest':

        /// Set the code sample to powershellWebRequest
        codeSampleCore = powershellWebRequest();

        /// Then break the loop
        break;

      /// Powershell/RestMethod
      case 'Powershell/RestMethod':

        /// Set the code sample to powershellRestMethod
        codeSampleCore = powershellRestMethod();

        /// Then break the loop
        break;

      /// R
      case 'R':

        /// Set the code sample to r
        codeSampleCore = r();

        /// Then break the loop
        break;

      /// Ruby
      case 'Ruby':

        /// Set the code sample to ruby
        codeSampleCore = ruby();

        /// Then break the loop
        break;

      /// Swift
      case 'Swift':

        /// Set the code sample to swift
        codeSampleCore = swift();

        /// Then break the loop
        break;

      /// If none of the above cases match
      default:

        /// Set the code sample to shellCURL
        codeSampleCore = shellCURL();
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

  /// The base sample code for Shell/cURL
  String shellCURL() {
    /// Define the sample code
    String code = '''
curl --request {0} \\
  --url {1}{2} \\
  --header 'Content-Type: application/json' \\
  --data '{
    {3}
}'
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Shell/HTTPie
  String shellHTTPie() {
    /// Define the sample code
    String code = '''
echo '{
  {3}
}' |  \\
  http {0} {1}{2} \\
  Content-Type:application/json
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Shell/Wget
  String shellWget() {
    /// Define the sample code
    String code = '''
wget --quiet \\
  --method {0} \\
  --header 'Content-Type: application/json' \\
  --body-data '{\\n  {3} \\n}' \\
  --output-document \\
  - {1}{2}
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for JavaScript/Fetch
  String javascriptFetch() {
    /// Define the sample code
    String code = '''
fetch("{1}{2}", {
  "method": "{0}",
  "headers": {
    "Content-Type": "application/json"
  },
  "body": "{ {3} }"
})
.then(response => {
  console.log(response);
})
.catch(err => {
  console.error(err);
});
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for JavaScript/XMLHttpRequest
  String javascriptXMLHttpRequest() {
    /// Define the sample code
    String code = '''
const data = JSON.stringify({
  {3}
});

const xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("{0}", "{1}{2}");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for JavaScript/jQuery
  String javascriptJQuery() {
    /// Define the sample code
    String code = '''
const settings = {
  "async": true,
  "crossDomain": true,
  "url": "{1}{2}",
  "method": "{0}",
  "headers": {
    "Content-Type": "application/json"
  },
  "processData": false,
  "data": "{\\n {3} \\n}"
};

\$.ajax(settings).done(function (response) {
  console.log(response);
});
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for JavaScript/Axios
  String javascriptAxios() {
    /// Define the sample code
    String code = '''
import axios from "axios";

const options = {
  method: '{0}',
  url: '{1}{2}',
  headers: {'Content-Type': 'application/json'},
  data: {{3}}
};

axios.request(options).then(function (response) {
  console.log(response.data);
}).catch(function (error) {
  console.error(error);
});
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Node/Native
  String nodeNative() {
    /// Define the sample code
    String code = '''
const http = require("https");

const options = {
  "method": "{0}",
  "hostname": "{1}",
  "port": null,
  "path": "{2}",
  "headers": {
    "Content-Type": "application/json"
  }
};

const req = http.request(options, function (res) {
  const chunks = [];

  res.on("data", function (chunk) {
    chunks.push(chunk);
  });

  res.on("end", function () {
    const body = Buffer.concat(chunks);
    console.log(body.toString());
  });
});

req.write(JSON.stringify({ {3} }));
req.end();
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Node/Request
  String nodeRequest() {
    /// Define the sample code
    String code = '''
const request = require('request');

const options = {
  method: '{0}',
  url: '{1}{2}',
  headers: {'Content-Type': 'application/json'},
  body: { {3} },
  json: true
};

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Node/Unirest
  String nodeUnirest() {
    /// Define the sample code
    String code = '''
const unirest = require("unirest");

const req = unirest("{0}", "{1}{2}");

req.headers({
  "Content-Type": "application/json"
});

req.type("json");
req.send({
  {3}
});

req.end(function (res) {
  if (res.error) throw new Error(res.error);

  console.log(res.body);
});
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Node/Fetch
  String nodeFetch() {
    /// Define the sample code
    String code = '''
const fetch = require('node-fetch');

let url = '{1}{2}';

let options = {
  method: '{0}',
  headers: {'Content-Type': 'application/json'},
  body: '{ {3} }'
};

fetch(url, options)
  .then(res => res.json())
  .then(json => console.log(json))
  .catch(err => console.error('error:' + err));
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Node/Axios
  String nodeAxios() {
    /// Define the sample code
    String code = '''
var axios = require("axios").default;

var options = {
  method: '{0}',
  url: '{1}{2}',
  headers: {'Content-Type': 'application/json'},
  data: { {3} }
};

axios.request(options).then(function (response) {
  console.log(response.data);
}).catch(function (error) {
  console.error(error);
});
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Python/Python 3
  String pythonPython3() {
    /// Define the sample code
    String code = '''
import http.client

conn = http.client.HTTPSConnection("{1}")

payload = "{\\n  {3} \\n}"

headers = { 'Content-Type': "application/json" }

conn.request("{0}", "{2}", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Python/Python Requests
  String pythonPythonRequests() {
    /// Define the sample code
    String code = '''
import requests

url = "{1}{2}"

payload = "{\n  {3} \n}"
headers = {'Content-Type': 'application/json'}

response = requests.request("{0}", url, data=payload, headers=headers)

print(response.text)
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Go
  String go() {
    /// Define the sample code
    String code = '''
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "{1}{2}"

	payload := strings.NewReader("{\\n {3} \\n}")

	req, _ := http.NewRequest("{0}", url, payload)

	req.Header.Add("Content-Type", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for C
  String c() {
    /// Define the sample code
    String code = '''
CURL *hnd = curl_easy_init();

curl_easy_setopt(hnd, CURLOPT_CUSTOMREQUEST, "{0}");
curl_easy_setopt(hnd, CURLOPT_URL, "{1}{2}");

struct curl_slist *headers = NULL;
headers = curl_slist_append(headers, "Content-Type: application/json");
curl_easy_setopt(hnd, CURLOPT_HTTPHEADER, headers);

curl_easy_setopt(hnd, CURLOPT_POSTFIELDS, "{\\n {3} \\n}");

CURLcode ret = curl_easy_perform(hnd);
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Obj-c
  String objC() {
    /// Define the sample code
    String code = '''
#import <Foundation/Foundation.h>

NSDictionary *headers = @{ @"Content-Type": @"application/json" };
NSDictionary *parameters = @{ @{3} };

NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:nil];

NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"{1}{2}"]
                                                       cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                   timeoutInterval:10.0];
[request setHTTPMethod:@"{0}"];
[request setAllHTTPHeaderFields:headers];
[request setHTTPBody:postData];

NSURLSession *session = [NSURLSession sharedSession];
NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                if (error) {
                                                    NSLog(@"%@", error);
                                                } else {
                                                    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                    NSLog(@"%@", httpResponse);
                                                }
                                            }];
[dataTask resume];
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for OCaml
  String oCaml() {
    /// Define the sample code
    String code = '''
open Cohttp_lwt_unix
open Cohttp
open Lwt

let uri = Uri.of_string "{1}{2}" in
let headers = Header.add (Header.init ()) "Content-Type" "application/json" in
let body = Cohttp_lwt_body.of_string "{\\n {3} \\n}" in

Client.call ~headers ~body `{0} uri
>>= fun (res, body_stream) ->
  (* Do stuff with the result *)
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for C#/HttpClient
  String cSharpHttpClient() {
    /// Define the sample code
    String code = '''
var client = new HttpClient();
var request = new HttpRequestMessage
{
    Method = HttpMethod.{0},
    RequestUri = new Uri("{1}{2}"),
    Headers =
    {
        { "Content-Type", "application/json" },
    },
    Content = new StringContent("{\\n {3} \\n}")
    {
        Headers =
        {
            ContentType = new MediaTypeHeaderValue("application/json")
        }
    }
};
using (var response = await client.SendAsync(request))
{
    response.EnsureSuccessStatusCode();
    var body = await response.Content.ReadAsStringAsync();
    Console.WriteLine(body);
}
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for C#/RestSharp
  String cSharpRestSharp() {
    /// Define the sample code
    String code = '''
var client = new RestClient("{1}{2}");
var request = new RestRequest(Method.{0});
request.AddHeader("Content-Type", "application/json");
request.AddParameter("undefined", "{\\n {3} \\n}", ParameterType.RequestBody);
IRestResponse response = client.Execute(request);
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Java/AsyncHttp
  String javaAsyncHttp() {
    /// Define the sample code
    String code = '''
AsyncHttpClient client = new DefaultAsyncHttpClient();
client.prepare("{0}", "{1}{2}")
  .setHeader("Content-Type", "application/json")
  .setBody("{\\n {3} \\n}")
  .execute()
  .toCompletableFuture()
  .thenAccept(System.out::println)
  .join();

client.close();
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Java/NetHttp
  String javaNetHttp() {
    /// Define the sample code
    String code = '''
HttpRequest request = HttpRequest.newBuilder()
    .uri(URI.create("{1}{2}"))
    .header("Content-Type", "application/json")
    .method("{0}", HttpRequest.BodyPublishers.ofString("{\\n {3} \\n}"))
    .build();
HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
System.out.println(response.body());
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Java/OkHttp
  String javaOkHttp() {
    /// Define the sample code
    String code = '''
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\\n {3} \\n}");
Request request = new Request.Builder()
  .url("{1}{2}")
  .{0}(body)
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Java/Unirest
  String javaUnirest() {
    /// Define the sample code
    String code = '''
HttpResponse<String> response = Unirest.{0}("{1}{2}")
  .header("Content-Type", "application/json")
  .body("{\\n {3} \\n}")
  .asString();
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Http
  String http() {
    /// Define the sample code
    String code = '''
{0} {2} HTTP/1.1
Content-Type: application/json
Host: {1}
Content-Length: 250

{
  {3}
}
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Clojure
  String clojure() {
    /// Define the sample code
    String code = '''
(require '[clj-http.client :as client])

(client/{0} "{1}{2}" {:headers {:Content-Type "application/json"}
                                                              :content-type :json
                                                              :form-params {:{3} }})
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Kotlin
  String kotlin() {
    /// Define the sample code
    String code = '''
val client = OkHttpClient()

val mediaType = MediaType.parse("application/json")
val body = RequestBody.create(mediaType, "{\\n {3} \\n}")
val request = Request.Builder()
  .url("{1}{2}")
  .{0}(body)
  .addHeader("Content-Type", "application/json")
  .build()

val response = client.newCall(request).execute()
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for PHP/pecl/http 1
  String phpPeclHttp1() {
    /// Define the sample code
    String code = '''
<?php

\$request = new HttpRequest();
\$request->setUrl('{1}{2}');
\$request->setMethod(HTTP_METH_{0});

\$request->setHeaders([
  'Content-Type' => 'application/json'
]);

\$request->setBody('{
  {3}
}');

try {
  \$response = \$request->send();

  echo \$response->getBody();
} catch (HttpException \$ex) {
  echo \$ex;
}
?>

''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for PHP/pecl/http 2
  String phpPeclHttp2() {
    /// Define the sample code
    String code = '''
<?php

\$client = new http\Client;
\$request = new http\Client\Request;

\$body = new http\Message\Body;
\$body->append('{
  {3}
}');

\$request->setRequestUrl('{1}{2}');
\$request->setRequestMethod('{0}');
\$request->setBody(\$body);

\$request->setHeaders([
  'Content-Type' => 'application/json'
]);

\$client->enqueue(\$request)->send();
\$response = \$client->getResponse();

echo \$response->getBody();
?>

''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for PHP/cURL
  String phpCURL() {
    /// Define the sample code
    String code = '''
<?php

\$curl = curl_init();

curl_setopt_array(\$curl, [
  CURLOPT_URL => "{1}{2}",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "{0}",
  CURLOPT_POSTFIELDS => "{\\n {3} \\n}",
  CURLOPT_HTTPHEADER => [
    "Content-Type: application/json"
  ],
]);

\$response = curl_exec(\$curl);
\$err = curl_error(\$curl);

curl_close(\$curl);

if (\$err) {
  echo "cURL Error #:" . \$err;
} else {
  echo \$response;
}
?>

''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Powershell/WebRequest
  String powershellWebRequest() {
    /// Define the sample code
    String code = '''
\$headers=@{}
\$headers.Add("Content-Type", "application/json")
\$response = Invoke-WebRequest -Uri '{1}{2}' -Method {0} -Headers \$headers -ContentType 'undefined' -Body '{
  {3}
}'
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Powershell/RestMethod
  String powershellRestMethod() {
    /// Define the sample code
    String code = '''
\$headers=@{}
\$headers.Add("Content-Type", "application/json")
\$response = Invoke-RestMethod -Uri '{1}{2}' -Method {0} -Headers \$headers -ContentType 'undefined' -Body '{
  {3}
}'
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for R
  String r() {
    /// Define the sample code
    String code = '''
library(httr)

url <- "{1}{2}"

payload <- "{\\n {3} \\n}"

encode <- "json"

response <- VERB("{0}", url, body = payload, add_headers(Content_Type = 'application/json'), content_type("application/json"), encode = encode)

content(response, "text")
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Ruby
  String ruby() {
    /// Define the sample code
    String code = '''
require 'uri'
require 'net/http'
require 'openssl'

url = URI("{1}{2}")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::{0}.new(url)
request["Content-Type"] = 'application/json'
request.body = "{\\n {3} \\n}"

response = http.request(request)
puts response.read_body
''';

    /// Return the sample code
    return code;
  }

  /// The base sample code for Swift
  String swift() {
    /// Define the sample code
    String code = '''
import Foundation

let headers = ["Content-Type": "application/json"]
let parameters = [
  {3}
] as [String : Any]

let postData = JSONSerialization.data(withJSONObject: parameters, options: [])

let request = NSMutableURLRequest(url: NSURL(string: "{1}{2}")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "{0}"
request.allHTTPHeaderFields = headers
request.httpBody = postData as Data

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
  if (error != nil) {
    print(error)
  } else {
    let httpResponse = response as? HTTPURLResponse
    print(httpResponse)
  }
})

dataTask.resume()
''';

    /// Return the sample code
    return code;
  }
}

/// End of code
