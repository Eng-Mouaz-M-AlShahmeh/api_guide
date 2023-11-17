/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [SampleCodePureTypes] class
@immutable
class SampleCodePureTypes {
  /// Define [SampleCodePureTypes] constructor
  SampleCodePureTypes();

  /// The base sample code for Shell/cURL
  final String shellCURL = '''
curl --request {0} \\
  --url {1}{2}{4}{5} \\
  --header 'Content-Type: application/json' \\
  {11}
  --data '{
    {3}
}'
''';

  /// The base sample code for Shell/HTTPie
  final String shellHTTPie = '''
echo '{
  {3}
}' |  \\
  http {0} {1}{2}{4}{5} \\
  Content-Type:application/json \\
  {12}
''';

  /// The base sample code for Shell/Wget
  final String shellWget = '''
wget --quiet \\
  --method {0} \\
  --header 'Content-Type: application/json' \\
  {11}{13}
  --body-data '{\\n {3} \\n}' \\
  --output-document \\
  - {1}{2}{4}{5}
''';

  /// The base sample code for JavaScript/Fetch
  final String javascriptFetch = '''
fetch("{1}{2}{4}{5}", {
  "method": "{0}",
  "headers": {
    Content-Type: 'application/json'{14}
    {15}
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

  /// The base sample code for JavaScript/XMLHttpRequest
  final String javascriptXMLHttpRequest = '''
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

xhr.open("{0}", "{1}{2}{4}{5}");
xhr.setRequestHeader('Content-Type', 'application/json');
{16}

xhr.send(data);
''';

  /// The base sample code for JavaScript/jQuery
  final String javascriptJQuery = '''
const settings = {
  "async": true,
  "crossDomain": true,
  "url": "{1}{2}{4}{5}",
  "method": "{0}",
  "headers": {
    Content-Type: 'application/json'{14}
    {15}
  },
  "processData": false,
  "data": "{\\n {3} \\n}"
};

\$.ajax(settings).done(function (response) {
  console.log(response);
});
''';

  /// The base sample code for JavaScript/Axios
  final String javascriptAxios = '''
import axios from "axios";

const options = {
  method: '{0}',
  params: {{6}},
  url: '{1}{2}',
  headers: {
  Content-Type: 'application/json'{14}
  {15}
  },
  data: {{3}}
};

axios.request(options).then(function (response) {
  console.log(response.data);
}).catch(function (error) {
  console.error(error);
});
''';

  /// The base sample code for Node/Native
  final String nodeNative = '''
const http = require("https");

const options = {
  "method": "{0}",
  "hostname": "{1}",
  "port": null,
  "path": "{2}{4}{5}",
  "headers": {
    Content-Type: 'application/json'{14}
    {15}
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

  /// The base sample code for Node/Request
  final String nodeRequest = '''
const request = require('request');

const options = {
  method: '{0}',
  url: '{1}{2}',
  qs: {{6}},
  headers: {
    Content-Type: 'application/json'{14}
    {15}
  },
  body: { {3} },
  json: true
};

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});
''';

  /// The base sample code for Node/Unirest
  final String nodeUnirest = '''
const unirest = require("unirest");

const req = unirest("{0}", "{1}{2}");

req.query({
  {6}
});

req.headers({
  Content-Type: 'application/json'{14}
  {15}
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

  /// The base sample code for Node/Fetch
  final String nodeFetch = '''
const fetch = require('node-fetch');

let url = '{1}{2}{4}{5}';

let options = {
  method: '{0}',
  headers: {
  Content-Type: 'application/json'{14}
  {15}
  },
  body: '{ {3} }'
};

fetch(url, options)
  .then(res => res.json())
  .then(json => console.log(json))
  .catch(err => console.error('error:' + err));
''';

  /// The base sample code for Node/Axios
  final String nodeAxios = '''
var axios = require("axios").default;

var options = {
  method: '{0}',
  url: '{1}{2}',
  params: {{6}},
  headers: {
  Content-Type: 'application/json'{14}
  {15}
  },
  data: { {3} }
};

axios.request(options).then(function (response) {
  console.log(response.data);
}).catch(function (error) {
  console.error(error);
});
''';

  /// The base sample code for Python/Python 3
  final String pythonPython3 = '''
import http.client

conn = http.client.HTTPSConnection("{1}")

payload = "{\\n  {3} \\n}"

headers = { 
  'Content-Type': "application/json"{14}
  {17}
}

conn.request("{0}", "{2}{4}{5}", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
''';

  /// The base sample code for Python/Python Requests
  final String pythonPythonRequests = '''
import requests

url = "{1}{2}"

querystring = {{6}}

payload = "{\\n  {3} \\n}"

headers = {
  "Content-Type": "application/json"{14}
  {18}
}

response = requests.request("{0}", url, data=payload, headers=headers, params=querystring)

print(response.text)
''';

  /// The base sample code for Go
  final String go = '''
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "{1}{2}{4}{5}"

	payload := strings.NewReader("{\\n {3} \\n}")

	req, _ := http.NewRequest("{0}", url, payload)

	req.Header.Add("Content-Type", "application/json")
	{19}

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
''';

  /// The base sample code for C
  final String c = '''
CURL *hnd = curl_easy_init();

curl_easy_setopt(hnd, CURLOPT_CUSTOMREQUEST, "{0}");
curl_easy_setopt(hnd, CURLOPT_URL, "{1}{2}{4}{5}");

struct curl_slist *headers = NULL;
headers = curl_slist_append(headers, "Content-Type: application/json");
{20}
curl_easy_setopt(hnd, CURLOPT_HTTPHEADER, headers);

curl_easy_setopt(hnd, CURLOPT_POSTFIELDS, "{\\n {3} \\n}");

CURLcode ret = curl_easy_perform(hnd);
''';

  /// The base sample code for Obj-c
  final String objC = '''
#import <Foundation/Foundation.h>

NSDictionary *headers = @{ 
        @"Content-Type": @"application/json"{14}
        {21}
};

NSDictionary *parameters = @{ {22} };

NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:nil];

NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"{1}{2}{4}{5}"]
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

  /// The base sample code for OCaml
  final String oCaml = '''
open Cohttp_lwt_unix
open Cohttp
open Lwt

let uri = Uri.of_string "{1}{2}{4}{5}" in
let headers = Header.add (Header.init ()) [
  ("Content-Type" "application/json");
  {23}
] in

let body = Cohttp_lwt_body.of_string "{\\n {3} \\n}" in

Client.call ~headers ~body `{0} uri
>>= fun (res, body_stream) ->
  (* Do stuff with the result *)
''';

  /// The base sample code for C#/HttpClient
  final String cSharpHttpClient = '''
var client = new HttpClient();
var request = new HttpRequestMessage
{
    Method = HttpMethod.{0},
    RequestUri = new Uri("{1}{2}{4}{5}"),
    Headers =
    {
        { "Content-Type", "application/json" },
        {24}{14}
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

  /// The base sample code for C#/RestSharp
  final String cSharpRestSharp = '''
var client = new RestClient("{1}{2}{4}{5}");
var request = new RestRequest(Method.{0});
request.AddHeader("Content-Type", "application/json");
{25}
request.AddParameter("undefined", "{\\n {3} \\n}", ParameterType.RequestBody);
IRestResponse response = client.Execute(request);
''';

  /// The base sample code for Java/AsyncHttp
  final String javaAsyncHttp = '''
AsyncHttpClient client = new DefaultAsyncHttpClient();
client.prepare("{0}", "{1}{2}{4}{5}")
  .setHeader("Content-Type", "application/json")
  {26}
  .setBody("{\\n {3} \\n}")
  .execute()
  .toCompletableFuture()
  .thenAccept(System.out::println)
  .join();

client.close();
''';

  /// The base sample code for Java/NetHttp
  final String javaNetHttp = '''
HttpRequest request = HttpRequest.newBuilder()
    .uri(URI.create("{1}{2}{4}{5}"))
    .header("Content-Type", "application/json")
    {27}
    .method("{0}", HttpRequest.BodyPublishers.ofString("{\\n {3} \\n}"))
    .build();
HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
System.out.println(response.body());
''';

  /// The base sample code for Java/OkHttp
  final String javaOkHttp = '''
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\\n {3} \\n}");
Request request = new Request.Builder()
  .url("{1}{2}{4}{5}")
  .{0}(body)
  .addHeader("Content-Type", "application/json")
  {28}
  .build();

Response response = client.newCall(request).execute();
''';

  /// The base sample code for Java/Unirest
  final String javaUnirest = '''
HttpResponse<String> response = Unirest.{0}("{1}{2}{4}{5}")
  .header("Content-Type", "application/json")
  {27}
  .body("{\\n {3} \\n}")
  .asString();
''';

  /// The base sample code for Http
  final String http = '''
{0} {2}{4}{5} HTTP/1.1
Content-Type: application/json
{29}
Host: {1}

{
  {3}
}
''';

  /// The base sample code for Clojure
  final String clojure = '''
(require '[clj-http.client :as client])

(client/{0} "{1}{2}" {:headers {:Content-Type "application/json"
                                 {30}}
                      :query-params {{7}{8}}
                      :content-type :json
                      :form-params { {9}{10} }
                      }
)
''';

  /// The base sample code for Kotlin
  final String kotlin = '''
val client = OkHttpClient()

val mediaType = MediaType.parse("application/json")
val body = RequestBody.create(mediaType, "{\\n {3} \\n}")
val request = Request.Builder()
  .url("{1}{2}{4}{5}")
  .{0}(body)
  .addHeader("Content-Type", "application/json")
  {28}
  .build()

val response = client.newCall(request).execute()
''';

  /// The base sample code for PHP/pecl/http 1
  final String phpPeclHttp1 = '''
<?php

\$request = new HttpRequest();
\$request->setUrl('{1}{2}{4}{5}');
\$request->setMethod(HTTP_METH_{0});

\$request->setHeaders([
  'Content-Type' => 'application/json'{14}
  {31}{14}
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

  /// The base sample code for PHP/pecl/http 2
  final String phpPeclHttp2 = '''
<?php

\$client = new http\Client;
\$request = new http\Client\Request;

\$body = new http\Message\Body;
\$body->append('{
  {3}
}');

\$request->setRequestUrl('{1}{2}{4}{5}');
\$request->setRequestMethod('{0}');
\$request->setBody(\$body);

\$request->setHeaders([
  'Content-Type' => 'application/json'{14}
  {31}{14}
]);

\$client->enqueue(\$request)->send();
\$response = \$client->getResponse();

echo \$response->getBody();
?>

''';

  /// The base sample code for PHP/cURL
  final String phpCURL = '''
<?php

\$curl = curl_init();

curl_setopt_array(\$curl, [
  CURLOPT_URL => "{1}{2}{4}{5}",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "{0}",
  CURLOPT_POSTFIELDS => "{\\n {3} \\n}",
  CURLOPT_HTTPHEADER => [
    "Content-Type: application/json"{14}
    {18}
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

  /// The base sample code for Powershell/WebRequest
  final String powershellWebRequest = '''
\$headers=@{}
\$headers.Add("Content-Type", "application/json")
{32}
\$response = Invoke-WebRequest -Uri '{1}{2}{4}{5}' -Method {0} -Headers \$headers -ContentType 'undefined' -Body '{
  {3}
}'
''';

  /// The base sample code for Powershell/RestMethod
  final String powershellRestMethod = '''
\$headers=@{}
\$headers.Add("Content-Type", "application/json")
{32}
\$response = Invoke-RestMethod -Uri '{1}{2}{4}{5}' -Method {0} -Headers \$headers -ContentType 'undefined' -Body '{
  {3}
}'
''';

  /// The base sample code for R
  final String r = '''
library(httr)

url <- "{1}{2}"

payload <- "{\\n {3} \\n}"

encode <- "json"

queryString <- list(
  {6}
)

response <- VERB("{0}", url, query = queryString, body = payload, add_headers('Content_Type' = 'application/json'{14} {33}), content_type("application/json"), encode = encode)

content(response, "text")
''';

  /// The base sample code for Ruby
  final String ruby = '''
require 'uri'
require 'net/http'
require 'openssl'

url = URI("{1}{2}{4}{5}")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::{0}.new(url)
request["Content-Type"] = 'application/json'
{34}
request.body = "{\\n {3} \\n}"

response = http.request(request)
puts response.read_body
''';

  /// The base sample code for Swift
  final String swift = '''
import Foundation

let headers = [
  "Content-Type": "application/json"{14}
  {18}
]
let parameters = [
  {3}
] as [String : Any]

let postData = JSONSerialization.data(withJSONObject: parameters, options: [])

let request = NSMutableURLRequest(url: NSURL(string: "{1}{2}{4}{5}")! as URL,
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
}
