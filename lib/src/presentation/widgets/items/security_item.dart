import 'dart:convert';

/// Import [flutter/material] package files
import 'package:flutter/material.dart';

/// Import [flutter_riverpod] package files
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Import [APIGuide] package files
import '../../../../api_guide.dart';

/// Define [securityItem] function
Padding securityItem(
  /// WidgetRef
  WidgetRef ref,

  /// APISecurityScheme
  APISecurityScheme itemSecurityScheme,
) {
  /// isDarkModeProvider to check theme attributes' states
  final isDarkMode = ref.watch(isDarkModeProvider);

  return Padding(
    padding: const EdgeInsets.fromLTRB(
      Constants.size0,
      Constants.size10,
      Constants.size0,
      Constants.size10,
    ),
    child: DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.size8),
        border: Border.all(
          color: isDarkMode ? Constants.greyColor! : Constants.greyDarkColor!,
          width: Constants.size1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          Constants.size1,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(Constants.size8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  /// Check the current light/dark theme mode
                  color: isDarkMode
                      ? Constants.greyDarkColor
                      : Constants.greyColor,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.size8),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Constants.arrowNavIcon,

                          /// Check the current light/dark theme mode
                          color: isDarkMode
                              ? ConstantsDarkMode.themeColor(ref)
                              : ConstantsLightMode.themeColor(ref),
                          size: Constants.size15,
                        ),
                        SelectableText(
                          '${itemSecurityScheme.securitySchemeType.title} (${itemSecurityScheme.securitySchemeKey})',
                          style: TextStyle(
                            color: isDarkMode
                                ? ConstantsDarkMode.themeColor(ref)
                                : ConstantsLightMode.themeColor(ref),
                            fontWeight: FontWeight.normal,
                            fontSize: Constants.size13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Divider(
                height: Constants.size1,
                thickness: Constants.size1,
                color: isDarkMode
                    ? ConstantsDarkMode.greyLightColor
                    : ConstantsLightMode.greyLightColor,
              ),

              /// Display the response body if it exists
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              Constants.size8,
                            ),
                            bottomRight: Radius.circular(
                              Constants.size8,
                            ),
                          ),

                          /// Check the current light/dark theme mode
                          color: isDarkMode
                              ? Constants.greyDarkColor
                              : Constants.greyColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(
                            Constants.size10,
                          ),
                          child: Column(
                            children: [
                              /// Display the custom item security scheme description
                              itemSecurityScheme.description == null ||
                                      itemSecurityScheme.description == ''
                                  ? SizedBox()
                                  : Row(
                                      children: [
                                        SelectableText(
                                          itemSecurityScheme.description!,
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: Constants.size12,
                                            color: isDarkMode
                                                ? Constants.greyColor
                                                : Constants.greyDarkColor,
                                          ),
                                        ),
                                      ],
                                    ),

                              /// Display if the custom item security scheme description exists
                              itemSecurityScheme.description == null ||
                                      itemSecurityScheme.description ==
                                          Constants.emptyTxt
                                  ? SizedBox()
                                  : SizedBox(
                                      height: Constants.size15,
                                    ),

                              /// Display the item security scheme description
                              SelectableText(
                                itemSecurityScheme
                                    .securitySchemeType.description,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: Constants.size12,
                                  color: isDarkMode
                                      ? Constants.greyColor
                                      : Constants.greyDarkColor,
                                ),
                              ),

                              SizedBox(
                                height: Constants.size15,
                              ),

                              /// Display the item security scheme example
                              itemSecurityScheme.securitySchemeType ==
                                          SecuritySchemeType.HobaHTTP ||
                                      itemSecurityScheme.securitySchemeType ==
                                          SecuritySchemeType.MutualHTTP ||
                                      itemSecurityScheme.securitySchemeType ==
                                          SecuritySchemeType.NegotiateHTTP ||
                                      itemSecurityScheme.securitySchemeType ==
                                          SecuritySchemeType.OAuthHTTP ||
                                      itemSecurityScheme.securitySchemeType ==
                                          SecuritySchemeType.ScramSHA1HTTP ||
                                      itemSecurityScheme.securitySchemeType ==
                                          SecuritySchemeType.ScramSHA256HTTP ||
                                      itemSecurityScheme.securitySchemeType ==
                                          SecuritySchemeType.VapidHTTP ||
                                      itemSecurityScheme.securitySchemeType ==
                                          SecuritySchemeType.OAuth2
                                  ? SizedBox()
                                  : SizedBox(
                                      width: double.infinity,
                                      child: Wrap(
                                        spacing: Constants.size3,
                                        runSpacing: Constants.size3,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        children: [
                                          itemSecurityScheme
                                                          .securitySchemeType ==
                                                      SecuritySchemeType
                                                          .OAuth2CodeFlow ||
                                                  itemSecurityScheme
                                                          .securitySchemeType ==
                                                      SecuritySchemeType
                                                          .OAuth2ClientFlow ||
                                                  itemSecurityScheme
                                                          .securitySchemeType ==
                                                      SecuritySchemeType
                                                          .OAuth2ImplicitFlow ||
                                                  itemSecurityScheme
                                                          .securitySchemeType ==
                                                      SecuritySchemeType
                                                          .OAuth2PasswordFlow ||
                                                  itemSecurityScheme
                                                          .securitySchemeType ==
                                                      SecuritySchemeType
                                                          .OpenIDConnect
                                              ? SizedBox()
                                              : SelectableText(
                                                  Constants.exampleTxt,
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: Constants.size12,
                                                    color: isDarkMode
                                                        ? Constants.greyColor
                                                        : Constants
                                                            .greyDarkColor,
                                                  ),
                                                ),
                                          itemSecurityScheme
                                                      .securitySchemeType ==
                                                  SecuritySchemeType
                                                      .OpenIDConnect
                                              ? SizedBox()
                                              : DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Constants.size8),
                                                    border: Border.all(
                                                      color: isDarkMode
                                                          ? Constants.greyColor!
                                                          : Constants
                                                              .greyDarkColor!,
                                                      width: Constants.size1,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            Constants.size5),
                                                    child: SelectableText(
                                                      /// Check if the item is QueryAPIKey
                                                      itemSecurityScheme
                                                                  .securitySchemeType ==
                                                              SecuritySchemeType
                                                                  .QueryAPIKey
                                                          ? '?${itemSecurityScheme.securitySchemeName}=${itemSecurityScheme.valueExample ?? Constants.oneTwoThreeTxt}'
                                                          :

                                                          /// Check if the item is HeaderAPIKey or CookieAPIKey
                                                          itemSecurityScheme
                                                                          .securitySchemeType ==
                                                                      SecuritySchemeType
                                                                          .HeaderAPIKey ||
                                                                  itemSecurityScheme
                                                                          .securitySchemeType ==
                                                                      SecuritySchemeType
                                                                          .CookieAPIKey
                                                              ? '${itemSecurityScheme.securitySchemeName}=${itemSecurityScheme.valueExample ?? Constants.oneTwoThreeTxt}'
                                                              :

                                                              /// Check if the item is BasicHTTP
                                                              itemSecurityScheme
                                                                          .securitySchemeType ==
                                                                      SecuritySchemeType
                                                                          .BasicHTTP
                                                                  ?

                                                                  /// Base 64 encode with utf8 support the [username:password] example text
                                                                  '${Constants.authorizationTxt}${Constants.basicTxt}${base64.encode(utf8.encode("${itemSecurityScheme.userNameExample ?? Constants.demoUsernameTxt}:${itemSecurityScheme.passwordExample ?? Constants.demoPasswordTxt}"))}'
                                                                  :

                                                                  /// Check if the item is BearerHTTP
                                                                  itemSecurityScheme
                                                                              .securitySchemeType ==
                                                                          SecuritySchemeType
                                                                              .BearerHTTP
                                                                      ? '${Constants.authorizationTxt}${Constants.bearerTxt}${itemSecurityScheme.tokenExample ?? Constants.oneTwoThreeTxt}'
                                                                      :

                                                                      /// Check if the item is DigestHTTP
                                                                      itemSecurityScheme.securitySchemeType ==
                                                                              SecuritySchemeType.DigestHTTP
                                                                          ? '${Constants.authorizationTxt}${itemSecurityScheme.digestExample ?? Constants.digestDemoTxt}'
                                                                          :

                                                                          /// Check if the item is OAuth2PasswordFlow or OAuth2ClientFlow
                                                                          itemSecurityScheme.securitySchemeType == SecuritySchemeType.OAuth2PasswordFlow || itemSecurityScheme.securitySchemeType == SecuritySchemeType.OAuth2ClientFlow
                                                                              ? '${Constants.tokenUrlTxt}${itemSecurityScheme.tokenUrl ?? Constants.emptyTxt}${itemSecurityScheme.refreshUrl != null ? "\n${Constants.refreshUrlTxt}${itemSecurityScheme.refreshUrl ?? Constants.emptyTxt}" : Constants.emptyTxt}'
                                                                              :

                                                                              /// Check if the item is OAuth2ImplicitFlow
                                                                              itemSecurityScheme.securitySchemeType == SecuritySchemeType.OAuth2ImplicitFlow
                                                                                  ? '${Constants.authorizeUrlTxt}${itemSecurityScheme.authorizeUrl ?? Constants.emptyTxt}${itemSecurityScheme.refreshUrl != null ? "\n${Constants.refreshUrlTxt}${itemSecurityScheme.refreshUrl ?? Constants.emptyTxt}" : Constants.emptyTxt}'
                                                                                  :

                                                                                  /// Check if the item is OAuth2CodeFlow
                                                                                  itemSecurityScheme.securitySchemeType == SecuritySchemeType.OAuth2CodeFlow
                                                                                      ? '${Constants.authorizeUrlTxt}${itemSecurityScheme.authorizeUrl ?? Constants.emptyTxt} \n${Constants.tokenUrlTxt}${itemSecurityScheme.tokenUrl ?? Constants.emptyTxt}${itemSecurityScheme.refreshUrl != null ? "\n${Constants.refreshUrlTxt}${itemSecurityScheme.refreshUrl ?? Constants.emptyTxt}" : Constants.emptyTxt}'
                                                                                      :

                                                                                      /// If none of the above then return empty text
                                                                                      Constants.emptyTxt,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize:
                                                            Constants.size12,
                                                        color: isDarkMode
                                                            ? Constants
                                                                .greyColor
                                                            : Constants
                                                                .greyDarkColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                        ],
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
