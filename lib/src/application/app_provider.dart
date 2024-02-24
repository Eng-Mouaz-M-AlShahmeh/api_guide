import 'dart:convert';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Define [isOpenSampleCodeProvider] with default value of false
final isOpenSampleCodeProvider = StateProvider<bool>((ref) => false);

/// Define [isOpenServerProvider] with default value of false
final isOpenServerProvider = StateProvider<bool>((ref) => false);

/// Define [introTextProvider] with default value of false
final introTextProvider = StateProvider<String>((ref) => '');

/// Define [sampleCodeTypeProvider] with default value of false
final sampleCodeTypeProvider =
    StateProvider<String>((ref) => SampleCodeFunctions().types.first);

/// Define [termsLinkProvider] with default value of null
final termsLinkProvider = StateProvider<String?>((ref) => null);

/// Define [privacyLinkProvider] with default value of null
final privacyLinkProvider = StateProvider<String?>((ref) => null);

/// Define [contactLinkProvider] with default value of null
final contactLinkProvider = StateProvider<String?>((ref) => null);

/// Define [contactEmailProvider] with default value of null
final contactEmailProvider = StateProvider<String?>((ref) => null);

/// Define [versionProvider] with default value of 0.0
final versionProvider = StateProvider<double>((ref) => 0.0);

/// Define [latestUpdateProvider] with default value of DateTime(2024)
final latestUpdateProvider = StateProvider<DateTime>((ref) => DateTime(2024));

/// Define [spdxLicenceTypeProvider] with default value of null
final spdxLicenceTypeProvider = StateProvider<SPDXLicenceType?>((ref) => null);

/// Define [selectedAPIServerProvider] with default value of APIServer(title: 'Live', urlHost: 'https://example.com')
final selectedAPIServerProvider = StateProvider<APIServer>(
    (ref) => APIServer(title: 'Live', urlHost: 'https://example.com'));

/// Define [scaffoldKeyProvider] with default value of GlobalKey()
final scaffoldKeyProvider =
    StateProvider<GlobalKey<ScaffoldState>>((ref) => GlobalKey());

/// Define [introKeyProvider] with default value of GlobalKey()
final introKeyProvider = StateProvider<GlobalKey>((ref) => GlobalKey());

/// Define [faqKeyProvider] with default value of GlobalKey()
final faqKeyProvider = StateProvider<GlobalKey>((ref) => GlobalKey());

/// Define [scrollController1Provider] with default value of ScrollController()
final scrollController1Provider =
    StateProvider<ScrollController>((ref) => ScrollController());

/// Define [apiItemKeysProvider] with default value of []
final apiItemKeysProvider = StateProvider<List<GlobalKey>>((ref) => []);

/// Define [apiItemListProvider] with default value of []
final apiItemListProvider = StateProvider<List<APIItem>>((ref) => []);

/// Define [apiFaqsProvider] with default value of []
final apiFaqsProvider = StateProvider<List<APIGuideFAQ>>((ref) => []);

/// Define [apiServerListProvider] with default value of []
final apiServerListProvider = StateProvider<List<APIServer>>((ref) => []);

/// Define [updateAPIItemKeys] function which update
/// the state of [_apiItemList] and [_apiItemKeys] value
updateAPIItemAndKeys(List<APIItem> val, WidgetRef ref) {
  /// Check if api items list exists or not
  if (ref.read(apiItemListProvider).isEmpty) {
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
    ref.read(apiItemListProvider.notifier).state = val;
  }

  /// Check if api items keys exists or not
  if (ref.read(apiItemKeysProvider).isEmpty) {
    /// Initialize global keys for API items
    /// Update the value of [_apiItemKeys]
    ref.read(apiItemKeysProvider.notifier).state = ref
        .read(apiItemListProvider)
        .map((e) => GlobalKey(

            /// Define debugLabel with title, urlPath and request method name
            debugLabel: '${e.title} ${e.urlPath} ${e.request.method.name}'))
        .toList();
  }

  /// Run the updateAPIItemWithSecurity function
  updateAPIItemWithSecurity(val, ref);
}

/// Define [updateAPIItemWithSecurity] function which update
/// the state of [_apiItemKeys] value
updateAPIItemWithSecurity(List<APIItem> val, WidgetRef ref) {
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
            if (!element.request.params
                .any((param) => param.key.contains(item.securitySchemeName))) {
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
            if (!element.request.params
                .any((param) => param.key.contains(item.securitySchemeName))) {
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
  ref.read(apiItemListProvider.notifier).state = val;
}

/// Define [updateAPIItemIsHovered] function which update
/// the state of [_apiItemList] value
updateAPIItemIsHovered(APIItem item, bool isHovered, WidgetRef ref) {
  /// Update the value of [_apiItemList] item
  ref
      .read(apiItemListProvider.notifier)
      .state
      .where((element) => element == item)
      .first
      .isHovered = isHovered;
}

/// Define [updateAPIFaqs] function which update
/// the state of [_apiFaqs] value
updateAPIFaqs(List<APIGuideFAQ> val, WidgetRef ref) {
  /// Check if api items faqs exists or not
  if (ref.read(apiFaqsProvider).isEmpty) {
    /// Update the value of [_apiFaqs]
    ref.read(apiFaqsProvider.notifier).state = val;
  }
}

/// Define [updateAPIServerList] function which update
/// the state of [_urlHost] value
updateAPIServerList(List<APIServer> val, WidgetRef ref) {
  /// Check if api server list exists or not
  if (ref.read(apiServerListProvider).isEmpty) {
    /// Update the value of [_apiServerList]
    ref.read(apiServerListProvider.notifier).state = val;

    /// Update the value of [_selectedAPIServer]
    ref.read(selectedAPIServerProvider.notifier).state =
        ref.read(apiServerListProvider).first;
  }
}
