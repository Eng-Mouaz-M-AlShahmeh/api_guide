/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// HTTP defines a set of request methods to indicate the desired action to be performed for a given resource.
/// Although they can also be nouns, these request methods are sometimes referred to as HTTP verbs.
/// Each of them implements a different semantic, but some common features are shared by a group of them:
/// e.g. a request method can be safe, idempotent, or cacheable.
/// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
enum HttpRequestMethod {
  /// The GET method requests a representation of the specified resource.
  /// Requests using GET should only retrieve data.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  GET,

  /// The HEAD method asks for a response identical to a GET request,
  /// but without the response body.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  HEAD,

  /// The POST method submits an entity to the specified resource,
  /// often causing a change in state or side effects on the server.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  POST,

  /// The PUT method replaces all current representations of the target
  /// resource with the request payload.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  PUT,

  /// The DELETE method deletes the specified resource.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  DELETE,

  /// The CONNECT method establishes a tunnel to the server identified by
  /// the target resource.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  CONNECT,

  /// The OPTIONS method describes the communication options for the target resource.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  OPTIONS,

  /// The TRACE method performs a message loop-back test along
  /// the path to the target resource.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  TRACE,

  /// The PATCH method applies partial modifications to a resource.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
  PATCH;

  /// Define [HttpRequestMethod] constructor
  const HttpRequestMethod();
}

/// HTTP response status codes indicate whether a specific HTTP request has been successfully completed.
/// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
enum HttpResponseStatusCode {
  /// This interim response indicates that the client should continue the request
  /// or ignore the response if the request is already finished.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Continue(
    /// Status Code
    statusCode: 100,

    /// Status Title
    statusTitle: 'Continue',

    /// Status Type
    statusType: 'Information responses',
  ),

  /// This code is sent in response to an Upgrade request header from the client
  /// and indicates the protocol the server is switching to.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  SwitchingProtocols(
    /// Status Code
    statusCode: 101,

    /// Status Title
    statusTitle: 'Switching Protocols',

    /// Status Type
    statusType: 'Information responses',
  ),

  /// This code indicates that the server has received and is processing the request,
  /// but no response is available yet.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  ProcessingWebDAV(
    /// Status Code
    statusCode: 102,

    /// Status Title
    statusTitle: 'Processing (WebDAV)',

    /// Status Type
    statusType: 'Information responses',
  ),

  /// This status code is primarily intended to be used with the Link header,
  /// letting the user agent start preloading resources while the server prepares a response.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  EarlyHints(
    /// Status Code
    statusCode: 103,

    /// Status Title
    statusTitle: 'Early Hints',

    /// Status Type
    statusType: 'Information responses',
  ),

  /// The request succeeded. The result meaning of "success" depends on the HTTP method:
  /// GET: The resource has been fetched and transmitted in the message body.
  /// HEAD: The representation headers are included in the response without any message body.
  /// PUT or POST: The resource describing the result of the action is transmitted in the message body.
  /// TRACE: The message body contains the request message as received by the server.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  OK(
    /// Status Code
    statusCode: 200,

    /// Status Title
    statusTitle: 'OK',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// The request succeeded, and a new resource was created as a result.
  /// This is typically the response sent after POST requests,
  /// or some PUT requests.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Created(
    /// Status Code
    statusCode: 201,

    /// Status Title
    statusTitle: 'Created',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// The request has been received but not yet acted upon. It is noncommittal,
  /// since there is no way in HTTP to later send an asynchronous response indicating the outcome of the request.
  /// It is intended for cases where another process or server handles the request, or for batch processing.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Accepted(
    /// Status Code
    statusCode: 202,

    /// Status Title
    statusTitle: 'Accepted',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// This response code means the returned metadata is not exactly the same as is available from the origin server,
  /// but is collected from a local or a third-party copy. This is mostly used for mirrors or backups of another resource.
  /// Except for that specific case, the 200 OK response is preferred to this status.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  NonAuthoritativeInformation(
    /// Status Code
    statusCode: 203,

    /// Status Title
    statusTitle: 'Non-Authoritative Information',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// There is no content to send for this request, but the headers may be useful.
  /// The user agent may update its cached headers for this resource with the new ones.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  NoContent(
    /// Status Code
    statusCode: 204,

    /// Status Title
    statusTitle: 'No Content',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// Tells the user agent to reset the document which sent this request.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  ResetContent(
    /// Status Code
    statusCode: 205,

    /// Status Title
    statusTitle: 'Reset Content',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// This response code is used when the Range header
  /// is sent from the client to request only part of a resource.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  PartialContent(
    /// Status Code
    statusCode: 206,

    /// Status Title
    statusTitle: 'Partial Content',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// Conveys information about multiple resources,
  /// for situations where multiple status codes might be appropriate.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  MultiStatusWebDAV(
    /// Status Code
    statusCode: 207,

    /// Status Title
    statusTitle: 'Multi-Status (WebDAV)',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// Used inside a <dav:propstat> response element to avoid repeatedly enumerating
  /// the internal members of multiple bindings to the same collection.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  AlreadyReportedWebDAV(
    /// Status Code
    statusCode: 208,

    /// Status Title
    statusTitle: 'Already Reported (WebDAV)',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// The server has fulfilled a GET request for the resource,
  /// and the response is a representation of the result of one
  /// or more instance-manipulations applied to the current instance.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  IMUsedHTTPDeltaEncoding(
    /// Status Code
    statusCode: 226,

    /// Status Title
    statusTitle: 'IM Used (HTTP Delta encoding)',

    /// Status Type
    statusType: 'Successful responses',
  ),

  /// The request has more than one possible response.
  /// The user agent or user should choose one of them.
  /// (There is no standardized way of choosing one of the responses,
  /// but HTML links to the possibilities are recommended so the user can pick.)
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  MultipleChoices(
    /// Status Code
    statusCode: 300,

    /// Status Title
    statusTitle: 'Multiple Choices',

    /// Status Type
    statusType: 'Redirection messages',
  ),

  /// The URL of the requested resource has been changed permanently.
  /// The new URL is given in the response.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  MovedPermanently(
    /// Status Code
    statusCode: 301,

    /// Status Title
    statusTitle: 'Moved Permanently',

    /// Status Type
    statusType: 'Redirection messages',
  ),

  /// This response code means that the URI of requested resource has been changed temporarily.
  /// Further changes in the URI might be made in the future. Therefore,
  /// this same URI should be used by the client in future requests.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Found(
    /// Status Code
    statusCode: 302,

    /// Status Title
    statusTitle: 'Found',

    /// Status Type
    statusType: 'Redirection messages',
  ),

  /// The server sent this response to direct the client to get
  /// the requested resource at another URI with a GET request.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  SeeOther(
    /// Status Code
    statusCode: 303,

    /// Status Title
    statusTitle: 'See Other',

    /// Status Type
    statusType: 'Redirection messages',
  ),

  /// This is used for caching purposes. It tells the client that the response has not been modified,
  /// so the client can continue to use the same cached version of the response.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  NotModified(
    /// Status Code
    statusCode: 304,

    /// Status Title
    statusTitle: 'Not Modified',

    /// Status Type
    statusType: 'Redirection messages',
  ),

  /// Defined in a previous version of the HTTP specification to indicate that
  /// a requested response must be accessed by a proxy. It has been deprecated
  /// due to security concerns regarding in-band configuration of a proxy.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  UseProxy(
    /// Status Code
    statusCode: 305,

    /// Status Title
    statusTitle: 'Use Proxy',

    /// Status Type
    statusType: 'Redirection messages',
  ),

  /// This response code is no longer used; it is just reserved.
  /// It was used in a previous version of the HTTP/1.1 specification.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Unused(

      /// Status Code
      statusCode: 306,

      /// Status Title
      statusTitle: 'unused',

      /// Status Type
      statusType: 'Redirection messages'),

  /// The server sends this response to direct the client to get the requested resource
  /// at another URI with the same method that was used in the prior request.
  /// This has the same semantics as the 302 Found HTTP response code,
  /// with the exception that the user agent must not change the HTTP method used:
  /// if a POST was used in the first request, a POST must be used in the second request.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  TemporaryRedirect(
    /// Status Code
    statusCode: 307,

    /// Status Title
    statusTitle: 'Temporary Redirect',

    /// Status Type
    statusType: 'Redirection messages',
  ),

  /// This means that the resource is now permanently located at another URI,
  /// specified by the Location: HTTP Response header. This has the same semantics
  /// as the 301 Moved Permanently HTTP response code, with the exception that
  /// the user agent must not change the HTTP method used: if a POST was used in the first request,
  /// a POST must be used in the second request.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  PermanentRedirect(
    /// Status Code
    statusCode: 308,

    /// Status Title
    statusTitle: 'Permanent Redirect',

    /// Status Type
    statusType: 'Redirection messages',
  ),

  /// The server cannot or will not process the request due to something that is perceived
  /// to be a client error (e.g., malformed request syntax,
  /// invalid request message framing, or deceptive request routing).
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  BadRequest(
    /// Status Code
    statusCode: 400,

    /// Status Title
    statusTitle: 'Bad Request',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// Although the HTTP standard specifies "unauthorized",
  /// semantically this response means "unauthenticated".
  /// That is, the client must authenticate itself to get the requested response.
  ///  https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Unauthorized(
    /// Status Code
    statusCode: 401,

    /// Status Title
    statusTitle: 'Unauthorized',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// This response code is reserved for future use. The initial aim for creating
  /// this code was using it for digital payment systems,
  /// however this status code is used very rarely and no standard convention exists.
  ///  https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  PaymentRequired(
    /// Status Code
    statusCode: 402,

    /// Status Title
    statusTitle: 'Payment Required',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The client does not have access rights to the content; that is,
  /// it is unauthorized, so the server is refusing to give the requested resource.
  /// Unlike 401 Unauthorized, the client's identity is known to the server.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Forbidden(
    /// Status Code
    statusCode: 403,

    /// Status Title
    statusTitle: 'Forbidden',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The server cannot find the requested resource.
  /// In the browser, this means the URL is not recognized. In an API,
  /// this can also mean that the endpoint is valid but the resource itself does not exist.
  /// Servers may also send this response instead of 403 Forbidden to hide the existence
  /// of a resource from an unauthorized client.
  /// This response code is probably the most well known due to its frequent occurrence on the web.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  NotFound(
    /// Status Code
    statusCode: 404,

    /// Status Title
    statusTitle: 'Not Found',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The request method is known by the server but is not supported by the target resource.
  /// For example, an API may not allow calling DELETE to remove a resource.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  MethodNotAllowed(
    /// Status Code
    statusCode: 405,

    /// Status Title
    statusTitle: 'Method Not Allowed',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// This response is sent when the web server,
  /// after performing server-driven content negotiation,
  /// doesn't find any content that conforms to the criteria given by the user agent.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  NotAcceptable(
    /// Status Code
    statusCode: 406,

    /// Status Title
    statusTitle: 'Not Acceptable',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// This is similar to 401 Unauthorized but authentication is needed to be done by a proxy.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  ProxyAuthenticationRequired(
    /// Status Code
    statusCode: 407,

    /// Status Title
    statusTitle: 'Proxy Authentication Required',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// This response is sent on an idle connection by some servers,
  /// even without any previous request by the client.
  /// It means that the server would like to shut down this unused connection.
  /// This response is used much more since some browsers,
  /// like Chrome, Firefox 27+, or IE9, use HTTP pre-connection mechanisms to speed up surfing.
  /// Also note that some servers merely shut down the connection without sending this message.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  RequestTimeout(

      /// Status Code
      statusCode: 408,

      /// Status Title
      statusTitle: 'Request Timeout',

      /// Status Type
      statusType: 'Client error responses'),

  /// This response is sent when a request conflicts with the current state of the server.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Conflict(
    /// Status Code
    statusCode: 409,

    /// Status Title
    statusTitle: 'Conflict',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// This response is sent when the requested content has been permanently deleted from server,
  /// with no forwarding address. Clients are expected to remove their caches and links to the resource.
  /// The HTTP specification intends this status code to be used for "limited-time, promotional services".
  /// APIs should not feel compelled to indicate resources that have been deleted with this status code.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  Gone(
    /// Status Code
    statusCode: 410,

    /// Status Title
    statusTitle: 'Gone',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// Server rejected the request because
  /// the Content-Length header field is not defined and the server requires it.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  LengthRequired(
    /// Status Code
    statusCode: 411,

    /// Status Title
    statusTitle: 'Length Required',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The client has indicated preconditions in its headers which the server does not meet.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  PreconditionFailed(
    /// Status Code
    statusCode: 412,

    /// Status Title
    statusTitle: 'Precondition Failed',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// Request entity is larger than limits defined by server.
  /// The server might close the connection or return an Retry-After header field.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  PayloadTooLarge(
    /// Status Code
    statusCode: 413,

    /// Status Title
    statusTitle: 'Payload Too Large',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The URI requested by the client is longer than the server is willing to interpret.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  URITooLong(
    /// Status Code
    statusCode: 414,

    /// Status Title
    statusTitle: 'URI Too Long',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The media format of the requested data is not supported by the server,
  /// so the server is rejecting the request.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  UnsupportedMediaType(
    /// Status Code
    statusCode: 415,

    /// Status Title
    statusTitle: 'Unsupported Media Type',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The range specified by the Range header field in the request cannot be fulfilled.
  /// It's possible that the range is outside the size of the target URI's data.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  RangeNotSatisfiable(

      /// Status Code
      statusCode: 416,

      /// Status Title
      statusTitle: 'Range Not Satisfiable',

      /// Status Type
      statusType: 'Client error responses'),

  /// This response code means the expectation indicated
  /// by the Expect request header field cannot be met by the server.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  ExpectationFailed(
    /// Status Code
    statusCode: 417,

    /// Status Title
    statusTitle: 'Expectation Failed',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The server refuses the attempt to brew coffee with a teapot.
  ///  https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  ITeapot(
    /// Status Code
    statusCode: 418,

    /// Status Title
    statusTitle: 'I\'m a teapot',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The request was directed at a server that is not able to produce a response.
  /// This can be sent by a server that is not configured to produce responses
  /// for the combination of scheme and authority that are included in the request URI.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  MisdirectedRequest(
    /// Status Code
    statusCode: 421,

    /// Status Title
    statusTitle: 'Misdirected Request',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The request was well-formed but was unable to be followed due to semantic errors.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  UnprocessableContentWebDAV(
    /// Status Code
    statusCode: 422,

    /// Status Title
    statusTitle: 'Unprocessable Content (WebDAV)',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The resource that is being accessed is locked.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  LockedWebDAV(
    /// Status Code
    statusCode: 423,

    /// Status Title
    statusTitle: 'Locked (WebDAV)',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The request failed due to failure of a previous request.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  FailedDependencyWebDAV(
    /// Status Code
    statusCode: 424,

    /// Status Title
    statusTitle: 'Failed Dependency (WebDAV)',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// Indicates that the server is unwilling to risk processing a request that might be replayed.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  TooEarly(
    /// Status Code
    statusCode: 425,

    /// Status Title
    statusTitle: 'Too Early',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The server refuses to perform the request using the current protocol
  /// but might be willing to do so after the client upgrades to a different protocol.
  /// The server sends an Upgrade header in a 426 response to indicate the required protocol(s).
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  UpgradeRequired(
    /// Status Code
    statusCode: 426,

    /// Status Title
    statusTitle: 'Upgrade Required',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The origin server requires the request to be conditional.
  /// This response is intended to prevent the 'lost update' problem,
  /// where a client GETs a resource's state, modifies it and PUTs it back to the server,
  /// when meanwhile a third party has modified the state on the server, leading to a conflict.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  PreconditionRequired(
    /// Status Code
    statusCode: 428,

    /// Status Title
    statusTitle: 'Precondition Required',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The user has sent too many requests in a given amount of time ("rate limiting").
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  TooManyRequests(
    /// Status Code
    statusCode: 429,

    /// Status Title
    statusTitle: 'Too Many Requests',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The server is unwilling to process the request because its header fields are too large.
  /// The request may be resubmitted after reducing the size of the request header fields.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  RequestHeaderFieldsTooLarge(
    /// Status Code
    statusCode: 431,

    /// Status Title
    statusTitle: 'Request Header Fields Too Large',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The user agent requested a resource that cannot legally be provided,
  /// such as a web page censored by a government.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  UnavailableForLegalReasons(
    /// Status Code
    statusCode: 451,

    /// Status Title
    statusTitle: 'Unavailable For Legal Reasons',

    /// Status Type
    statusType: 'Client error responses',
  ),

  /// The server has encountered a situation it does not know how to handle.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  InternalServerError(
    /// Status Code
    statusCode: 500,

    /// Status Title
    statusTitle: 'Internal Server Error',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// The request method is not supported by the server and cannot be handled.
  /// The only methods that servers are required to support (and therefore
  /// that must not return this code) are GET and HEAD.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  NotImplemented(
    /// Status Code
    statusCode: 501,

    /// Status Title
    statusTitle: 'Not Implemented',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// This error response means that the server,
  /// while working as a gateway to get a response needed to handle the request,
  /// got an invalid response.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  BadGateway(
    /// Status Code
    statusCode: 502,

    /// Status Title
    statusTitle: 'Bad Gateway',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// The server is not ready to handle the request.
  /// Common causes are a server that is down for maintenance or that is overloaded.
  /// Note that together with this response, a user-friendly page explaining the problem should be sent.
  /// This response should be used for temporary conditions and the Retry-After HTTP header should,
  /// if possible, contain the estimated time before the recovery of the service.
  /// The webmaster must also take care about the caching-related headers that are sent along with this response,
  /// as these temporary condition responses should usually not be cached.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  ServiceUnavailable(
    /// Status Code
    statusCode: 503,

    /// Status Title
    statusTitle: 'Service Unavailable',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// This error response is given when the server is acting
  /// as a gateway and cannot get a response in time.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  GatewayTimeout(
    /// Status Code
    statusCode: 504,

    /// Status Title
    statusTitle: 'Gateway Timeout',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// The HTTP version used in the request is not supported by the server.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  HTTPVersionNotSupported(
    /// Status Code
    statusCode: 505,

    /// Status Title
    statusTitle: 'HTTP Version Not Supported',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// The server has an internal configuration error:
  /// the chosen variant resource is configured to engage in transparent content negotiation itself,
  /// and is therefore not a proper end point in the negotiation process.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  VariantAlsoNegotiates(
    /// Status Code
    statusCode: 506,

    /// Status Title
    statusTitle: 'Variant Also Negotiates',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// The method could not be performed on the resource because the server
  /// is unable to store the representation needed to successfully complete the request.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  InsufficientStorageWebDAV(
    /// Status Code
    statusCode: 507,

    /// Status Title
    statusTitle: 'Insufficient Storage (WebDAV)',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// The server detected an infinite loop while processing the request.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  LoopDetectedWebDAV(
    /// Status Code
    statusCode: 508,

    /// Status Title
    statusTitle: 'Loop Detected (WebDAV)',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// Further extensions to the request are required for the server to fulfill it.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  NotExtended(
    /// Status Code
    statusCode: 510,

    /// Status Title
    statusTitle: 'Not Extended',

    /// Status Type
    statusType: 'Server error responses',
  ),

  /// Indicates that the client needs to authenticate to gain network access.
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
  NetworkAuthenticationRequired(
    /// Status Code
    statusCode: 511,

    /// Status Title
    statusTitle: 'Network Authentication Required',

    /// Status Type
    statusType: 'Server error responses',
  );

  /// Define const Object from [HttpResponseStatusCode] class
  const HttpResponseStatusCode({
    /// Use statusCode property as required attribute
    required this.statusCode,

    /// Use statusTitle property as required attribute
    required this.statusTitle,

    /// Use statusType property as required attribute
    required this.statusType,
  });

  /// Define [statusCode] property as int and final
  final int statusCode;

  /// Define [statusTitle] property as String and final
  final String statusTitle;

  /// Define [statusType] property as String and final
  final String statusType;
}
