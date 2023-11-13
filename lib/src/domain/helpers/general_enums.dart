/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Define property types
enum PropertyType {
  /// OpenAPI has two numeric types, number and integer,
  /// where number includes both integer and floating-point numbers.
  /// https://swagger.io/docs/specification/data-models/data-types/#numbers
  /// number property type
  number,

  /// OpenAPI has two numeric types, number and integer,
  /// where number includes both integer and floating-point numbers.
  /// https://swagger.io/docs/specification/data-models/data-types/#numbers
  /// integer property type
  integer,

  /// Unlike OpenAPI 2.0, Open API 3.0 does not have the file type.
  /// Files are defined as strings
  /// https://swagger.io/docs/specification/data-models/data-types/#file
  /// string file property type
  file,

  /// An optional format modifier serves as a hint at the contents
  /// and format of the string. OpenAPI defines the following built-in string formats:
  /// date – full-date notation as defined by RFC 3339, section 5.6, for example, 2017-07-21
  /// date-time – the date-time notation as defined by RFC 3339,
  /// section 5.6, for example, 2017-07-21T17:32:28Z
  /// password – a hint to UIs to mask the input
  /// byte – base64-encoded characters, for example, U3dhZ2dlciByb2Nrcw==
  /// binary – binary data, used to describe files (see Files below)
  /// However, format is an open value, so you can use any formats,
  /// even not those defined by the OpenAPI Specification, such as:
  /// email
  /// uuid
  /// uri
  /// hostname
  /// ipv4
  /// ipv6
  /// and others
  /// https://swagger.io/docs/specification/data-models/data-types/#string
  /// string property type
  string,

  /// type: boolean represents two values: true and false.
  /// Note that truthy and falsy values such as "true", "", 0 or null
  /// are not considered boolean values.
  /// https://swagger.io/docs/specification/data-models/data-types/#boolean
  /// boolean file property type
  boolean,

  /// Unlike JSON Schema, the items keyword is required in arrays.
  /// The value of items is a schema that describes the type and
  /// format of array items. Arrays can be nested:
  /// https://swagger.io/docs/specification/data-models/data-types/#array
  /// array file property type
  array,
}

/// Define param types
enum ParameterType {
  /// Query parameters are the most common type of parameters.
  /// They appear at the end of the request URL after a question mark (?),
  /// with different name=value pairs separated by ampersands (&).
  /// Query parameters can be required and optional.
  /// https://swagger.io/docs/specification/describing-parameters/#query-parameters
  /// query parameter type, such as /users?role=admin
  query,

  /// Path parameters are variable parts of a URL path.
  /// They are typically used to point to a specific resource within
  /// a collection, such as a user identified by ID.
  /// A URL can have several path parameters,
  /// each denoted with curly braces { }.
  /// https://swagger.io/docs/specification/describing-parameters/#path-parameters
  /// path parameter type, such as /users/{id}
  path,

  /// An API call may require that custom headers be sent with an HTTP request.
  /// OpenAPI lets you define custom request headers as in:
  /// header parameters. For example, suppose,
  /// a call to GET /ping requires the X-Request-ID header
  /// https://swagger.io/docs/specification/describing-parameters/#header-parameters

  /// HTTP headers let the client and the server pass additional information
  /// with an HTTP request or response. An HTTP header consists of its
  /// case-insensitive name followed by a colon (:), then by its value.
  /// Whitespace before the value is ignored.
  /// Custom proprietary headers have historically been used with an X- prefix,
  /// but this convention was deprecated in June 2012 because of
  /// the inconveniences it caused when nonstandard fields became
  /// standard in RFC 6648; others are listed in an IANA registry,
  /// whose original content was defined in RFC 4229.
  /// IANA also maintains a registry of proposed new HTTP headers.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers

  /// header parameter type, such as X-MyHeader: Value
  header,

  /// Operations can also pass parameters in the Cookie header,
  /// as Cookie: name=value. Multiple cookie parameters are sent in
  /// the same header, separated by a semicolon and space.
  /// https://swagger.io/docs/specification/describing-parameters/#cookie-parameters
  /// cookie parameter type, which are passed in the Cookie header,
  /// such as Cookie: debug=0; csrftoken=BUSe35dohU3O1MZvDCU
  cookie,
}
