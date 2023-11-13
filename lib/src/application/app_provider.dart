/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
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

  /// Url Host for API Guide
  String _urlHost = '';

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

  /// Define String getter of [_urlHost] called [urlHost]
  String get urlHost => _urlHost;

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

  /// Define Setters
  /// Define [updateAPIItemKeys] function which update
  /// the state of [_apiItemKeys] value
  updateAPIItemAndKeys(List<APIItem> val) {
    /// Check if api items list exists or not
    if (_apiItemList.isEmpty) {
      /// Update the value of [_apiItemList]
      _apiItemList = val;
    }

    /// Check if api items keys exists or not
    if (_apiItemKeys.isEmpty) {
      /// Initialize global keys for API items
      /// Update the value of [_apiItemKeys]
      _apiItemKeys = _apiItemList
          .map((e) => GlobalKey(
              debugLabel: '${e.title} ${e.urlPath} ${e.request.method.name}'))
          .toList();
    }

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
  updateAPIFaqsItemIsExpanded(int index, bool isExpanded) {
    /// Update the value of [_apiFaqs] item
    _apiFaqs[index].isExpanded = isExpanded;

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

  /// Define [updateIntroText] function which update
  /// the state of [_urlHost] value
  updateURLHost(String val) {
    /// Update the value of [_urlHost]
    _urlHost = val;

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
}

/// End of code
