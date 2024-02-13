import 'dart:convert';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [AppProvider] class which extends the [ChangeNotifier]
class AppProvider extends ChangeNotifier {
  /// Define initial attributes values
  /// GlobalKey for the scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  /// GlobalKey for the introduction section
  final GlobalKey _introKey = GlobalKey();

  /// GlobalKey for the FAQ section
  final GlobalKey _faqKey = GlobalKey();

  /// Scroll controller for the first section
  final ScrollController _scrollController1 = ScrollController();

  /// List of global keys for API items
  List<GlobalKey> _apiItemKeys = [];

  /// List of APIItem for API Guide
  List<APIItem> _apiItemList = [];

  /// List of APIItem for API Guide
  List<APIGuideFAQ> _apiFaqs = [];

  /// Introduction Text
  String _introText = '';

  /// Sample Code Type
  String _sampleCodeType = SampleCodeFunctions().types.first;

  /// List of API servers for API Guide
  List<APIServer> _apiServerList = [];

  /// Selected API server for API Guide
  APIServer _selectedAPIServer =
      APIServer(title: 'Live', urlHost: 'https://example.com');

  /// Terms Link of the API Guide
  String? _termsLink;

  /// Privacy Link of the API Guide
  String? _privacyLink;

  /// Contact Link of the API Guide
  String? _contactLink;

  /// Contact Email of the API Guide
  String? _contactEmail;

  /// SPDX Licence Type of the API Guide
  SPDXLicenceType? _spdxLicenceType;

  /// API version
  double _version = 0.0;

  /// Date of the latest update
  DateTime _latestUpdate = DateTime(2023);

  /// Define [_isOpenSampleCode] attribute with default value of false
  bool _isOpenSampleCode = false;

  /// Define [_isOpenServer] attribute with default value of false
  bool _isOpenServer = false;

  /// Define Getters
  /// Define GlobalKey<ScaffoldState> getter of [_scaffoldKey] called [scaffoldKey]
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  /// Define GlobalKey getter of [_introKey] called [introKey]
  GlobalKey get introKey => _introKey;

  /// Define GlobalKey getter of [_faqKey] called [faqKey]
  GlobalKey get faqKey => _faqKey;

  /// Define ScrollController getter of [_scrollController1] called [scrollController1]
  ScrollController get scrollController1 => _scrollController1;

  /// Define List<GlobalKey> getter of [_apiItemKeys] called [apiItemKeys]
  List<GlobalKey> get apiItemKeys => _apiItemKeys;

  /// Define List<APIItem> getter of [_apiItemList] called [apiItemList]
  List<APIItem> get apiItemList => _apiItemList;

  /// Define List<APIGuideFAQ> getter of [_apiFaqs] called [apiFaqs]
  List<APIGuideFAQ> get apiFaqs => _apiFaqs;

  /// Define String getter of [_introText] called [introText]
  String get introText => _introText;

  /// Define String getter of [_sampleCodeType] called [sampleCodeType]
  String get sampleCodeType => _sampleCodeType;

  /// Define List of APIServer getter of [_apiServerList] called [apiServerList]
  List<APIServer> get apiServerList => _apiServerList;

  /// Define selected APIServer getter of [_selectedAPIServer] called [selectedAPIServer]
  APIServer get selectedAPIServer => _selectedAPIServer;

  /// Define String getter of [_termsLink] called [termsLink]
  String? get termsLink => _termsLink;

  /// Define String getter of [_privacyLink] called [privacyLink]
  String? get privacyLink => _privacyLink;

  /// Define String getter of [_contactLink] called [contactLink]
  String? get contactLink => _contactLink;

  /// Define String getter of [_contactEmail] called [contactEmail]
  String? get contactEmail => _contactEmail;

  /// Define SPDXLicenceType getter of [_spdxLicenceType]
  /// called [spdxLicenceType]
  SPDXLicenceType? get spdxLicenceType => _spdxLicenceType;

  /// Define double getter of [_version] called [version]
  double get version => _version;

  /// Define DateTime getter of [_latestUpdate] called [latestUpdate]
  DateTime get latestUpdate => _latestUpdate;

  /// Define bool getter of [_isOpenSampleCode] called [isOpenSampleCode]
  bool get isOpenSampleCode => _isOpenSampleCode;

  /// Define bool getter of [_isOpenServer] called [isOpenServer]
  bool get isOpenServer => _isOpenServer;

  /// Define Setters
  /// Define [updateAPIItemKeys] function which update
  /// the state of [_apiItemList] and [_apiItemKeys] value
  updateAPIItemAndKeys(List<APIItem> val) {
    /// Check if api items list exists or not
    if (_apiItemList.isEmpty) {
      /// Loop over APIItem elements
      val.forEach((element) {
        /// Loop over APIItem => APIGuideRequest => APIGuideParam elements
        element.request.params.forEach((item) {
          /// Update the isSecurityItem to false
          /// as initial value to check security items later
          if (item.isSecurityItem == true) {
            /// Update the value to false always
            item.isSecurityItem = false;
          }
        });
      });

      /// Update the value of [_apiItemList]
      _apiItemList = val;
    }

    /// Check if api items keys exists or not
    if (_apiItemKeys.isEmpty) {
      /// Initialize global keys for API items
      /// Update the value of [_apiItemKeys]
      _apiItemKeys = _apiItemList
          .map((e) => GlobalKey(

              /// Define debugLabel with title, urlPath and request method name
              debugLabel: '${e.title} ${e.urlPath} ${e.request.method.name}'))
          .toList();
    }

    /// Run the updateAPIItemWithSecurity function
    updateAPIItemWithSecurity(val);

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define Setters
  /// Define [updateAPIItemWithSecurity] function which update
  /// the state of [_apiItemKeys] value
  updateAPIItemWithSecurity(List<APIItem> val) {
    /// Update the value of [_apiItemList]
    val.forEach((element) {
      /// Iterate over Security Scheme items
      element.securitySchemes.forEach((item) {
        /// Check if the element isOptionalSecurity is not true
        if (element.isOptionalSecurity != true) {
          /// Check the value of theme color and select the appropriate color
          switch (item.securitySchemeType) {
            /// Query APIKey Security Scheme Type
            case SecuritySchemeType.QueryAPIKey:

              /// Check if item not exists
              if (!element.request.params.any(
                  (param) => param.key.contains(item.securitySchemeName))) {
                /// Add request param item
                return element.request.params.add(
                  APIGuideParam(
                    key: item.securitySchemeName,
                    value: item.valueExample ?? Constants.oneTwoThreeTxt,
                    propertyType: PropertyType.string,
                    parameterType: ParameterType.query,
                    isRequired: true,
                    isSecurityItem: true,
                  ),
                );
              }

            /// Header APIKey Security Scheme Type
            case SecuritySchemeType.HeaderAPIKey:

              /// Check if item not exists
              if (!element.request.params.any(
                  (param) => param.key.contains(item.securitySchemeName))) {
                /// Add request param item
                return element.request.params.add(
                  APIGuideParam(
                    key: item.securitySchemeName,
                    value: item.valueExample ?? Constants.oneTwoThreeTxt,
                    propertyType: PropertyType.string,
                    parameterType: ParameterType.header,
                    isRequired: true,
                    isSecurityItem: true,
                  ),
                );
              }

            /// Basic HTTP Security Scheme Type
            case SecuritySchemeType.BasicHTTP:

              /// Check if item not exists
              if (!element.request.params.any((param) =>
                  param.key.contains(Constants.authorizationTxt) &&
                  param.value.contains(
                      '${Constants.basicTxt}${base64.encode(utf8.encode("${item.userNameExample ?? Constants.demoUsernameTxt}:${item.passwordExample ?? Constants.demoPasswordTxt}"))}'))) {
                /// Add request param item
                return element.request.params.add(
                  APIGuideParam(
                    key: Constants.authorizationTxt,
                    value:
                        '${Constants.basicTxt}${base64.encode(utf8.encode("${item.userNameExample ?? Constants.demoUsernameTxt}:${item.passwordExample ?? Constants.demoPasswordTxt}"))}',
                    propertyType: PropertyType.string,
                    parameterType: ParameterType.header,
                    isRequired: true,
                    isSecurityItem: true,
                  ),
                );
              }

            /// Bearer HTTP Security Scheme Type
            case SecuritySchemeType.BearerHTTP:

              /// Check if item not exists
              if (!element.request.params.any((param) =>
                  param.key.contains(Constants.authorizationTxt) &&
                  param.value.contains(
                      '${Constants.bearerTxt}${item.tokenExample ?? Constants.oneTwoThreeTxt}'))) {
                /// Add request param item
                return element.request.params.add(
                  APIGuideParam(
                    key: Constants.authorizationTxt,
                    value:
                        '${Constants.bearerTxt}${item.tokenExample ?? Constants.oneTwoThreeTxt}',
                    propertyType: PropertyType.string,
                    parameterType: ParameterType.header,
                    isRequired: true,
                    isSecurityItem: true,
                  ),
                );
              }

            /// Digest HTTP Security Scheme Type
            case SecuritySchemeType.DigestHTTP:

              /// Check if item not exists
              if (!element.request.params.any((param) =>
                  param.key.contains(Constants.authorizationTxt) &&
                  param.value.contains(
                      '${item.digestExample ?? Constants.digestDemoTxt}'))) {
                /// Add request param item
                return element.request.params.add(
                  APIGuideParam(
                    key: Constants.authorizationTxt,
                    value: '${item.digestExample ?? Constants.digestDemoTxt}',
                    propertyType: PropertyType.string,
                    parameterType: ParameterType.header,
                    isRequired: true,
                    isSecurityItem: true,
                  ),
                );
              }

            /// OAuth 2 Security Scheme Type
            /// or OAuth 2 Implicit Flow Security Scheme Type
            /// or OAuth 2 Password Flow Security Scheme Type
            /// or OAuth 2 Client Flow Security Scheme Type
            /// or OAuth 2 Code Flow Security Scheme Type
            case SecuritySchemeType.OAuth2 ||
                  SecuritySchemeType.OAuth2ImplicitFlow ||
                  SecuritySchemeType.OAuth2PasswordFlow ||
                  SecuritySchemeType.OAuth2ClientFlow ||
                  SecuritySchemeType.OAuth2CodeFlow:

              /// Check if item not exists
              if (!element.request.params.any((param) =>
                  param.key.contains(Constants.authorizationTxt) &&
                  param.value.contains(
                      '${item.tokenExample ?? "${Constants.bearerTxt}${Constants.oneTwoThreeTxt}"}'))) {
                /// Add request param item
                return element.request.params.add(
                  APIGuideParam(
                    key: Constants.authorizationTxt,
                    value:
                        '${item.tokenExample ?? "${Constants.bearerTxt}${Constants.oneTwoThreeTxt}"}',
                    propertyType: PropertyType.string,
                    parameterType: ParameterType.header,
                    isRequired: true,
                    isSecurityItem: true,
                  ),
                );
              }

            /// If none of the above cases match
            default:

              /// Not do any thing
              return;
          }
        }
      });
    });

    /// Update the value of [_apiItemList]
    _apiItemList = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateAPIItemIsHovered] function which update
  /// the state of [_apiItemList] value
  updateAPIItemIsHovered(APIItem item, bool isHovered) {
    /// Update the value of [_apiItemList] item
    _apiItemList.where((element) => element == item).first.isHovered =
        isHovered;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateAPIFaqs] function which update
  /// the state of [_apiFaqs] value
  updateAPIFaqs(List<APIGuideFAQ> val) {
    /// Check if api items faqs exists or not
    if (_apiFaqs.isEmpty) {
      /// Update the value of [_apiFaqs]
      _apiFaqs = val;
    }

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateAPIFaqsItemIsExpanded] function which update
  /// the state of [_apiFaqs] value
  updateAPIFaqsItemIsExpanded(APIGuideFAQ apiGuideFAQ, bool isExpanded) {
    /// Update the value of [_apiFaqs] item
    _apiFaqs.where((element) => element == apiGuideFAQ).first.isExpanded =
        isExpanded;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateIntroText] function which update
  /// the state of [_introText] value
  updateIntroText(String val) {
    /// Update the value of [_introText]
    _introText = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateSampleCodeType] function which update
  /// the state of [_sampleCodeType] value
  updateSampleCodeType(String val) {
    /// Update the value of [_sampleCodeType]
    _sampleCodeType = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateAPIServerList] function which update
  /// the state of [_urlHost] value
  updateAPIServerList(List<APIServer> val) {
    /// Check if api server list exists or not
    if (_apiServerList.isEmpty) {
      /// Update the value of [_apiServerList]
      _apiServerList = val;

      /// Update the value of [_selectedAPIServer]
      _selectedAPIServer = _apiServerList.first;
    }

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateSelectedAPIServer] function which update
  /// the state of [_selectedAPIServer] value
  updateSelectedAPIServer(APIServer val) {
    /// Update the value of [_selectedAPIServer]
    _selectedAPIServer = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateTermsLink] function which update
  /// the state of [_termsLink] value
  updateTermsLink(String? val) {
    /// Update the value of [_termsLink]
    _termsLink = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updatePrivacyLink] function which update
  /// the state of [_privacyLink] value
  updatePrivacyLink(String? val) {
    /// Update the value of [_privacyLink]
    _privacyLink = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateContactLink] function which update
  /// the state of [_contactLink] value
  updateContactLink(String? val) {
    /// Update the value of [_privacyLink]
    _contactLink = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateContactEmail] function which update
  /// the state of [_contactEmail] value
  updateContactEmail(String? val) {
    /// Update the value of [_privacyLink]
    _contactEmail = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateSPDXLicenceType] function which update
  /// the state of [_spdxLicenceType] value
  updateSPDXLicenceType(SPDXLicenceType? val) {
    /// Update the value of [_spdxLicenceType]
    _spdxLicenceType = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateVersion] function which update
  /// the state of [_version] value
  updateVersion(double val) {
    /// Update the value of [_version]
    _version = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateLatestUpdate] function which update
  /// the state of [_latestUpdate] value
  updateLatestUpdate(DateTime val) {
    /// Update the value of [_latestUpdate]
    _latestUpdate = val;

    /// Notify listeners to rebuild widgets that depend
    /// on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateIsOpenSampleCode] function which toggle
  /// the state of [_isOpenSampleCode] value
  updateIsOpenSampleCode(bool val) {
    /// Update the value of [_isOpenSampleCode]
    _isOpenSampleCode = val;

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }

  /// Define [updateIsOpenServer] function which toggle
  /// the state of [_isOpenServer] value
  updateIsOpenServer(bool val) {
    /// Update the value of [_isOpenServer]
    _isOpenServer = val;

    /// Notify listeners to rebuild widgets that depend on this ChangeNotifier
    notifyListeners();
  }

  /// Define [AppProvider] constructor
  AppProvider();
}
