/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package
/// .........................
/// Define SPDX licence types
/// The Software Package Data Exchange (SPDX)
/// An open standard describing SBOMs (Software Bill of Materials),
/// communicating a release: name, version, components, licenses, copyrights,
/// and useful security references. As a common format, SPDX reduces
/// redundant work related to sharing important release data,
/// thereby streamlining distribution and compliance.
/// The SPDX specification is a freely available international
/// open standard (ISO/IEC 5692:2021).
/// https://spdx.dev/
enum SPDXLicenceType {
  /// BSD Zero Clause License
  obsd(
    /// SPDX Licence Title
    title: 'OBSD',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/0BSD.html',
  ),

  /// Attribution Assurance License
  aal(
    /// SPDX Licence Title
    title: 'AAL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AAL.html',
  ),

  /// Amazon Digital Services License
  asdl(
    /// SPDX Licence Title
    title: 'ASDL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ADSL.html',
  ),

  /// Academic Free License v1.1
  afl_1_1(
    /// SPDX Licence Title
    title: 'AFL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AFL-1.1.html',
  ),

  /// Academic Free License v1.2
  afl_1_2(
    /// SPDX Licence Title
    title: 'AFL-1.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AFL-1.2.html',
  ),

  /// Academic Free License v2.0
  afl_2_0(
    /// SPDX Licence Title
    title: 'AFL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AFL-2.0.html',
  ),

  /// Academic Free License v2.1
  afl_2_1(
    /// SPDX Licence Title
    title: 'AFL-2.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AFL-2.1.html',
  ),

  /// Academic Free License v3.0
  afl_3_0(
    /// SPDX Licence Title
    title: 'AFL-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AFL-3.0.html',
  ),

  /// Affero General Public License v1.0 only
  agpl_1_0_only(
    /// SPDX Licence Title
    title: 'AGPL-1.0-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AGPL-1.0-only.html',
  ),

  /// Affero General Public License v1.0 or later
  agpl_1_0_or_later(
    /// SPDX Licence Title
    title: 'AGPL-1.0-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AGPL-1.0-or-later.html',
  ),

  /// GNU Affero General Public License v3.0 only
  agpl_3_0_only(
    /// SPDX Licence Title
    title: 'AGPL-3.0-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AGPL-3.0-only.html',
  ),

  /// GNU Affero General Public License v3.0 or later
  agpl_3_0_or_later(
    /// SPDX Licence Title
    title: 'AGPL-3.0-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AGPL-3.0-or-later.html',
  ),

  /// AMD's plpa_map.c License
  amdplpa(
    /// SPDX Licence Title
    title: 'AMDPLPA',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AMDPLPA.html',
  ),

  /// Apple MIT License
  aml(
    /// SPDX Licence Title
    title: 'AML',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AML.html',
  ),

  /// Academy of Motion Picture Arts and Sciences BSD
  ampas(
    /// SPDX Licence Title
    title: 'AMPAS',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/AMPAS.html',
  ),

  /// ANTLR Software Rights Notice
  antlr_pd(
    /// SPDX Licence Title
    title: 'ANTLR-PD',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ANTLR-PD.html',
  ),

  /// ANTLR Software Rights Notice with license fallback
  antlr_pd_fallback(
    /// SPDX Licence Title
    title: 'ANTLR-PD-fallback',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ANTLR-PD-fallback.html',
  ),

  /// Adobe Postscript AFM License
  apafml(
    /// SPDX Licence Title
    title: 'APAFML',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/APAFML.html',
  ),

  /// Adaptive Public License 1.0
  apl_1_0(
    /// SPDX Licence Title
    title: 'APL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/APL-1.0.html',
  ),

  /// Apple Public Source License 1.0
  apsl_1_0(
    /// SPDX Licence Title
    title: 'APSL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/APSL-1.0.html',
  ),

  /// Apple Public Source License 1.1
  apsl_1_1(
    /// SPDX Licence Title
    title: 'APSL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/APSL-1.1.html',
  ),

  /// Apple Public Source License 1.2
  apsl_1_2(
    /// SPDX Licence Title
    title: 'APSL-1.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/APSL-1.2.html',
  ),

  /// Apple Public Source License 2.0
  apsl_2_0(
    /// SPDX Licence Title
    title: 'APSL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/APSL-2.0.html',
  ),

  /// Abstyles License
  abstyles(
    /// SPDX Licence Title
    title: 'Abstyles',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Abstyles.html',
  ),

  /// Adobe Systems Incorporated Source Code License Agreement
  adobe_2006(
    /// SPDX Licence Title
    title: 'Adobe-2006',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Adobe-2006.html',
  ),

  /// Adobe Glyph List License
  adobe_glyph(
    /// SPDX Licence Title
    title: 'Adobe-Glyph',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Adobe-Glyph.html',
  ),

  /// Afmparse License
  afmparse(
    /// SPDX Licence Title
    title: 'Afmparse',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Afmparse.html',
  ),

  /// Aladdin Free Public License
  aladdin(
    /// SPDX Licence Title
    title: 'Aladdin',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Aladdin.html',
  ),

  /// Apache License 1.0
  apache_1_0(
    /// SPDX Licence Title
    title: 'Apache-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Apache-1.0.html',
  ),

  /// Apache License 1.1
  apache_1_1(
    /// SPDX Licence Title
    title: 'Apache-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Apache-1.1.html',
  ),

  /// Apache License 2.0
  apache_2_0(
    /// SPDX Licence Title
    title: 'Apache-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Apache-2.0.html',
  ),

  /// Artistic License 1.0
  artistic_1_0(
    /// SPDX Licence Title
    title: 'Artistic-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Artistic-1.0.html',
  ),

  /// Artistic License 1.0 (Perl)
  artistic_1_0_perl(
    /// SPDX Licence Title
    title: 'Artistic-1.0-Perl',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Artistic-1.0-Perl.html',
  ),

  /// Artistic License 1.0 w/clause 8
  artistic_1_0_cl8(
    /// SPDX Licence Title
    title: 'Artistic-1.0-cl8',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Artistic-1.0-cl8.html',
  ),

  /// Artistic License 2.0
  artistic_2_0(
    /// SPDX Licence Title
    title: 'Artistic-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Artistic-2.0.html',
  ),

  /// BSD 1-Clause License
  bsd_1_clause(
    /// SPDX Licence Title
    title: 'BSD-1-Clause',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-1-Clause.html',
  ),

  /// BSD 2-Clause "Simplified" License
  bsd_2_clause(
    /// SPDX Licence Title
    title: 'BSD-2-Clause',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-2-Clause.html',
  ),

  /// BSD-2-Clause Plus Patent License
  bsd_2_clause_patent(
    /// SPDX Licence Title
    title: 'BSD-2-Clause-Patent',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-2-Clause-Patent.html',
  ),

  /// BSD 2-Clause with views sentence
  bsd_2_clause_views(
    /// SPDX Licence Title
    title: 'BSD-2-Clause-Views',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-2-Clause-Views.html',
  ),

  /// BSD 3-Clause "New" or "Revised" License
  bsd_3_clause(
    /// SPDX Licence Title
    title: 'BSD-3-Clause',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-3-Clause.html',
  ),

  /// BSD with attribution
  bsd_3_clause_attribution(
    /// SPDX Licence Title
    title: 'BSD-3-Clause-Attribution',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-3-Clause-Attribution.html',
  ),

  /// BSD 3-Clause Clear License
  bsd_3_clause_clear(
    /// SPDX Licence Title
    title: 'BSD-3-Clause-Clear',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-3-Clause-Clear.html',
  ),

  /// Lawrence Berkeley National Labs BSD variant license
  bsd_3_clause_lbnl(
    /// SPDX Licence Title
    title: 'BSD-3-Clause-LBNL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-3-Clause-LBNL.html',
  ),

  /// BSD 3-Clause No Nuclear License
  bsd_3_clause_no_nuclear_license(
    /// SPDX Licence Title
    title: 'BSD-3-Clause-No-Nuclear',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-3-Clause-No-Nuclear-License.html',
  ),

  /// BSD 3-Clause No Nuclear License 2014
  bsd_3_clause_no_nuclear_license_2014(
    /// SPDX Licence Title
    title: 'BSD-3-Clause-No-Nuclear-2014',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-3-Clause-No-Nuclear-License-2014.html',
  ),

  /// BSD 3-Clause No Nuclear Warranty
  bsd_3_clause_no_nuclear_warranty(
    /// SPDX Licence Title
    title: 'BSD-3-Clause-No-Nuclear-Warranty',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-3-Clause-No-Nuclear-Warranty.html',
  ),

  /// BSD 3-Clause Open MPI variant
  bsd_3_clause_open_mpi(
    /// SPDX Licence Title
    title: 'BSD-3-Clause-Open-MPI',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-3-Clause-Open-MPI.html',
  ),

  /// BSD 4-Clause "Original" or "Old" License
  bsd_4_clause(
    /// SPDX Licence Title
    title: 'BSD-4-Clause',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-4-Clause.html',
  ),

  /// BSD-4-Clause (University of California-Specific)
  bsd_4_clause_uc(
    /// SPDX Licence Title
    title: 'BSD-4-Clause-UC',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-4-Clause-UC.html',
  ),

  /// BSD Protection License
  bsd_protection(
    /// SPDX Licence Title
    title: 'BSD-Protection',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-Protection.html',
  ),

  /// BSD Source Code Attribution
  bsd_source_code(
    /// SPDX Licence Title
    title: 'BSD-Source-Code',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSD-Source-Code.html',
  ),

  /// Boost Software License 1.0
  bsl_1_0(
    /// SPDX Licence Title
    title: 'BSL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BSL-1.0.html',
  ),

  /// Business Source License 1.1
  busl_1_1(
    /// SPDX Licence Title
    title: 'BUSL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BUSL-1.1.html',
  ),

  /// Bahyph License
  bahyph(
    /// SPDX Licence Title
    title: 'Bahyph',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Bahyph.html',
  ),

  /// Barr License
  barr(
    /// SPDX Licence Title
    title: 'Barr',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Barr.html',
  ),

  /// Beerware License
  beerware(
    /// SPDX Licence Title
    title: 'Beerware',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Beerware.html',
  ),

  /// BitTorrent Open Source License v1.0
  bit_torrent_1_0(
    /// SPDX Licence Title
    title: 'BitTorrent-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BitTorrent-1.0.html',
  ),

  /// BitTorrent Open Source License v1.1
  bit_torrent_1_1(
    /// SPDX Licence Title
    title: 'BitTorrent-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BitTorrent-1.1.html',
  ),

  /// Blue Oak Model License 1.0.0
  blue_oak_1_0_0(
    /// SPDX Licence Title
    title: 'BlueOak-1.0.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/BlueOak-1.0.0.html',
  ),

  /// Borceux license
  borceux(
    /// SPDX Licence Title
    title: 'Borceux',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Borceux.html',
  ),

  /// Cryptographic Autonomy License 1.0
  cal_1_0(
    /// SPDX Licence Title
    title: 'CAL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CAL-1.0.html',
  ),

  /// Cryptographic Autonomy License 1.0 (Combined Work Exception)
  cal_1_0_combined_work_exception(
    /// SPDX Licence Title
    title: 'CAL-1.0-Combined-Work-Exception',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CAL-1.0-Combined-Work-Exception.html',
  ),

  /// Computer Associates Trusted Open Source License 1.1
  catosl_1_1(
    /// SPDX Licence Title
    title: 'CATOSL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CATOSL-1.1.html',
  ),

  /// Creative Commons Attribution 1.0 Generic
  cc_by_1_0(
    /// SPDX Licence Title
    title: 'CC-BY-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-1.0.html',
  ),

  /// Creative Commons Attribution 2.0 Generic
  cc_by_2_0(
    /// SPDX Licence Title
    title: 'CC-BY-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-2.0.html',
  ),

  /// Creative Commons Attribution 2.5 Generic
  cc_by_2_5(
    /// SPDX Licence Title
    title: 'CC-BY-2.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-2.5.html',
  ),

  /// Creative Commons Attribution 3.0 Generic
  cc_by_3_0(
    /// SPDX Licence Title
    title: 'CC-BY-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-3.0.html',
  ),

  /// Creative Commons Attribution 3.0 Austria
  cc_by_3_0_at(
    /// SPDX Licence Title
    title: 'CC-BY-3.0-AT',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-3.0-AT.html',
  ),

  /// Creative Commons Attribution 3.0 United States
  cc_by_3_0_us(
    /// SPDX Licence Title
    title: 'CC-BY-3.0-US',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-3.0-US.html',
  ),

  /// Creative Commons Attribution 4.0 International
  cc_by_4_0(
    /// SPDX Licence Title
    title: 'CC-BY-4.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-4.0.html',
  ),

  /// Creative Commons Attribution Non Commercial 1.0 Generic
  cc_by_nc_1_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-1.0.html',
  ),

  /// Creative Commons Attribution Non Commercial 2.0 Generic
  cc_by_nc_2_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-2.0.html',
  ),

  /// Creative Commons Attribution Non Commercial 2.5 Generic
  cc_by_nc_2_5(
    /// SPDX Licence Title
    title: 'CC-BY-NC-2.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-2.5.html',
  ),

  /// Creative Commons Attribution Non Commercial 3.0 Unported
  cc_by_nc_3_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-3.0.html',
  ),

  /// Creative Commons Attribution Non Commercial 4.0 International
  cc_by_nc_4_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-4.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-4.0.html',
  ),

  /// Creative Commons Attribution Non Commercial No Derivatives 1.0 Generic
  cc_by_nc_nd_1_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-ND-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-ND-1.0.html',
  ),

  /// Creative Commons Attribution Non Commercial No Derivatives 2.0 Generic
  cc_by_nc_nd_2_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-ND-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-ND-2.0.html',
  ),

  /// Creative Commons Attribution Non Commercial No Derivatives 2.5 Generic
  cc_by_nc_nd_2_5(
    /// SPDX Licence Title
    title: 'CC-BY-NC-ND-2.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-ND-2.5.html',
  ),

  /// Creative Commons Attribution Non Commercial No Derivatives 3.0 Unported
  cc_by_nc_nd_3_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-ND-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-ND-3.0.html',
  ),

  /// Creative Commons Attribution Non Commercial No Derivatives 3.0 IGO
  cc_by_nc_nd_3_0_igo(
    /// SPDX Licence Title
    title: 'CC-BY-NC-ND-3.0-IGO',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-ND-3.0-IGO.html',
  ),

  /// Creative Commons Attribution Non Commercial No Derivatives 4.0 International
  cc_by_nc_nd_4_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-ND-4.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-ND-4.0.html',
  ),

  /// Creative Commons Attribution Non Commercial Share Alike 1.0 Generic
  cc_by_nc_sa_1_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-SA-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-SA-1.0.html',
  ),

  /// Creative Commons Attribution Non Commercial Share Alike 2.0 Generic
  cc_by_nc_sa_2_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-SA-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-SA-2.0.html',
  ),

  /// Creative Commons Attribution Non Commercial Share Alike 2.5 Generic
  cc_by_nc_sa_2_5(
    /// SPDX Licence Title
    title: 'CC-BY-NC-SA-2.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-SA-2.5.html',
  ),

  /// Creative Commons Attribution Non Commercial Share Alike 3.0 Unported
  cc_by_nc_sa_3_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-SA-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-SA-3.0.html',
  ),

  /// Creative Commons Attribution Non Commercial Share Alike 4.0 International
  cc_by_nc_sa_4_0(
    /// SPDX Licence Title
    title: 'CC-BY-NC-SA-4.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-NC-SA-4.0.html',
  ),

  /// Creative Commons Attribution No Derivatives 1.0 Generic
  cc_by_nd_1_0(
    /// SPDX Licence Title
    title: 'CC-BY-ND-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-ND-1.0.html',
  ),

  /// Creative Commons Attribution No Derivatives 2.0 Generic
  cc_by_nd_2_0(
    /// SPDX Licence Title
    title: 'CC-BY-ND-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-ND-2.0.html',
  ),

  /// Creative Commons Attribution No Derivatives 2.5 Generic
  cc_by_nd_2_5(
    /// SPDX Licence Title
    title: 'CC-BY-ND-2.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-ND-2.5.html',
  ),

  /// Creative Commons Attribution No Derivatives 3.0 Unported
  cc_by_nd_3_0(
    /// SPDX Licence Title
    title: 'CC-BY-ND-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-ND-3.0.html',
  ),

  /// Creative Commons Attribution No Derivatives 4.0 International
  cc_by_nd_4_0(
    /// SPDX Licence Title
    title: 'CC-BY-ND-4.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-ND-4.0.html',
  ),

  /// Creative Commons Attribution Share Alike 1.0 Generic
  cc_by_sa_1_0(
    /// SPDX Licence Title
    title: 'CC-BY-SA-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-SA-1.0.html',
  ),

  /// Creative Commons Attribution Share Alike 2.0 Generic
  cc_by_sa_2_0(
    /// SPDX Licence Title
    title: 'CC-BY-SA-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-SA-2.0.html',
  ),

  /// Creative Commons Attribution Share Alike 2.0 England and Wales
  cc_by_sa_2_0_uk(
    /// SPDX Licence Title
    title: 'CC-BY-SA-2.0-UK',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-SA-2.0-UK.html',
  ),

  /// Creative Commons Attribution Share Alike 2.5 Generic
  cc_by_sa_2_5(
    /// SPDX Licence Title
    title: 'CC-BY-SA-2.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-SA-2.5.html',
  ),

  /// Creative Commons Attribution Share Alike 3.0 Unported
  cc_by_sa_3_0(
    /// SPDX Licence Title
    title: 'CC-BY-SA-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-SA-3.0.html',
  ),

  /// Creative Commons Attribution Share Alike 3.0 Austria
  cc_by_sa_3_0_at(
    /// SPDX Licence Title
    title: 'CC-BY-SA-3.0-AT',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-SA-3.0-AT.html',
  ),

  /// Creative Commons Attribution Share Alike 4.0 International
  cc_by_sa_4_0(
    /// SPDX Licence Title
    title: 'CC-BY-SA-4.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-BY-SA-4.0.html',
  ),

  /// Creative Commons Public Domain Dedication and Certification
  cc_pddc(
    /// SPDX Licence Title
    title: 'CC-PDDC',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC-PDDC.html',
  ),

  /// Creative Commons Zero v1.0 Universal
  cc0_1_0(
    /// SPDX Licence Title
    title: 'CC0-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CC0-1.0.html',
  ),

  /// Common Development and Distribution License 1.0
  cddl_1_0(
    /// SPDX Licence Title
    title: 'CDDL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CDDL-1.0.html',
  ),

  /// Common Development and Distribution License 1.1
  cddl_1_1(
    /// SPDX Licence Title
    title: 'CDDL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CDDL-1.1.html',
  ),

  /// Community Data License Agreement Permissive 1.0
  cdla_permissive_1_0(
    /// SPDX Licence Title
    title: 'CDLA-Permissive-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CDLA-Permissive-1.0.html',
  ),

  /// Community Data License Agreement Sharing 1.0
  cdla_sharing_1_0(
    /// SPDX Licence Title
    title: 'CDLA-Sharing-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CDLA-Sharing-1.0.html',
  ),

  /// CeCILL Free Software License Agreement v1.0
  cecill_1_0(
    /// SPDX Licence Title
    title: 'CECILL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CECILL-1.0.html',
  ),

  /// CeCILL Free Software License Agreement v1.1
  cecill_1_1(
    /// SPDX Licence Title
    title: 'CECILL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CECILL-1.1.html',
  ),

  /// CeCILL Free Software License Agreement v2.0
  cecill_2_0(
    /// SPDX Licence Title
    title: 'CECILL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CECILL-2.0.html',
  ),

  /// CeCILL Free Software License Agreement v2.1
  cecill_2_1(
    /// SPDX Licence Title
    title: 'CECILL-2.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CECILL-2.1.html',
  ),

  /// CeCILL-B Free Software License Agreement
  cecill_b(
    /// SPDX Licence Title
    title: 'CECILL-B',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CECILL-B.html',
  ),

  /// CeCILL-C Free Software License Agreement
  cecill_c(
    /// SPDX Licence Title
    title: 'CECILL-C',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CECILL-C.html',
  ),

  /// CERN Open Hardware Licence v1.1
  cern_ohl_1_1(
    /// SPDX Licence Title
    title: 'CERN-OHL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CERN-OHL-1.1.html',
  ),

  /// CERN Open Hardware Licence v1.2
  cern_ohl_1_2(
    /// SPDX Licence Title
    title: 'CERN-OHL-1.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CERN-OHL-1.2.html',
  ),

  /// CERN Open Hardware Licence Version 2 - Permissive
  cern_ohl_p_2_0(
    /// SPDX Licence Title
    title: 'CERN-OHL-P-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CERN-OHL-P-2.0.html',
  ),

  /// CERN Open Hardware Licence Version 2 - Strongly Reciprocal
  cern_ohl_s_2_0(
    /// SPDX Licence Title
    title: 'CERN-OHL-S-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CERN-OHL-S-2.0.html',
  ),

  /// CERN Open Hardware Licence Version 2 - Weakly Reciprocal
  cern_ohl_w_2_0(
    /// SPDX Licence Title
    title: 'CERN-OHL-W-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CERN-OHL-W-2.0.html',
  ),

  /// CNRI Jython License
  cnri_jython(
    /// SPDX Licence Title
    title: 'CNRI-Jython',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CNRI-Jython.html',
  ),

  /// CNRI Python License
  cnri_python(
    /// SPDX Licence Title
    title: 'CNRI-Python',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CNRI-Python.html',
  ),

  /// CNRI Python Open Source GPL Compatible License Agreement
  cnri_python_gpl_compatible(
    /// SPDX Licence Title
    title: 'CNRI-Python-GPL-Compatible',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CNRI-Python-GPL-Compatible.html',
  ),

  /// Common Public Attribution License 1.0
  cpal_1_0(
    /// SPDX Licence Title
    title: 'CPAL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CPAL-1.0.html',
  ),

  /// Common Public License 1.0
  cpl_1_0(
    /// SPDX Licence Title
    title: 'CPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CPL-1.0.html',
  ),

  /// Code Project Open License 1.02
  cpol_1_02(
    /// SPDX Licence Title
    title: 'CPOL-1.02',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CPOL-1.02.html',
  ),

  /// CUA Office Public License v1.0
  cua_opl_1_0(
    /// SPDX Licence Title
    title: 'CUA-OPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CUA-OPL-1.0.html',
  ),

  /// Caldera License
  caldera(
    /// SPDX Licence Title
    title: 'Caldera',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Caldera.html',
  ),

  /// Clarified Artistic License
  cl_artistic(
    /// SPDX Licence Title
    title: 'ClArtistic',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ClArtistic.html',
  ),

  /// Condor Public License v1.1
  condor_1_1(
    /// SPDX Licence Title
    title: 'Condor-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Condor-1.1.html',
  ),

  /// Crossword License
  crossword(
    /// SPDX Licence Title
    title: 'Crossword',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Crossword.html',
  ),

  /// CrystalStacker License
  crystal_stacker(
    /// SPDX Licence Title
    title: 'CrystalStacker',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/CrystalStacker.html',
  ),

  /// Cube License
  cube(
    /// SPDX Licence Title
    title: 'Cube',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Cube.html',
  ),

  /// Deutsche Freie Software Lizenz
  d_fsl_1_0(
    /// SPDX Licence Title
    title: 'D-FSL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/D-FSL-1.0.html',
  ),

  /// DOC License
  doc(
    /// SPDX Licence Title
    title: 'DOC',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/DOC.html',
  ),

  /// DSDP License
  dsdp(
    /// SPDX Licence Title
    title: 'DSDP',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/DSDP.html',
  ),

  /// Dotseqn License
  dotseqn(
    /// SPDX Licence Title
    title: 'Dotseqn',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Dotseqn.html',
  ),

  /// Educational Community License v1.0
  ecl_1_0(
    /// SPDX Licence Title
    title: 'ECL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ECL-1.0.html',
  ),

  /// Educational Community License v2.0
  ecl_2_0(
    /// SPDX Licence Title
    title: 'ECL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ECL-2.0.html',
  ),

  /// Eiffel Forum License v1.0
  efl_1_0(
    /// SPDX Licence Title
    title: 'EFL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EFL-1.0.html',
  ),

  /// Eiffel Forum License v2.0
  efl_2_0(
    /// SPDX Licence Title
    title: 'EFL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EFL-2.0.html',
  ),

  /// EPICS Open License
  epics(
    /// SPDX Licence Title
    title: 'EPICS',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EPICS.html',
  ),

  /// Eclipse Public License 1.0
  epl_1_0(
    /// SPDX Licence Title
    title: 'EPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EPL-1.0.html',
  ),

  /// Eclipse Public License 2.0
  epl_2_0(
    /// SPDX Licence Title
    title: 'EPL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EPL-2.0.html',
  ),

  /// EU DataGrid Software License
  eu_datagrid(
    /// SPDX Licence Title
    title: 'EUDatagrid',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EUDatagrid.html',
  ),

  /// European Union Public License 1.0
  eupl_1_0(
    /// SPDX Licence Title
    title: 'EUPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EUPL-1.0.html',
  ),

  /// European Union Public License 1.1
  eupl_1_1(
    /// SPDX Licence Title
    title: 'EUPL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EUPL-1.1.html',
  ),

  /// European Union Public License 1.2
  eupl_1_2(
    /// SPDX Licence Title
    title: 'EUPL-1.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/EUPL-1.2.html',
  ),

  /// Entessa Public License v1.0
  entessa(
    /// SPDX Licence Title
    title: 'Entessa',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Entessa.html',
  ),

  /// Erlang Public License v1.1
  erl_pl_1_1(
    /// SPDX Licence Title
    title: 'ErlPL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ErlPL-1.1.html',
  ),

  /// Eurosym License
  eurosym(
    /// SPDX Licence Title
    title: 'Eurosym',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Eurosym.html',
  ),

  /// FSF All Permissive License
  fsfap(
    /// SPDX Licence Title
    title: 'FSFAP',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/FSFAP.html',
  ),

  /// FSF Unlimited License
  fsful(
    /// SPDX Licence Title
    title: 'FSFUL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/FSFUL.html',
  ),

  /// FSF Unlimited License (with License Retention)
  fsfullr(
    /// SPDX Licence Title
    title: 'FSFULLR',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/FSFULLR.html',
  ),

  /// Freetype Project License
  ftl(
    /// SPDX Licence Title
    title: 'FTL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/FTL.html',
  ),

  /// Fair License
  fair(
    /// SPDX Licence Title
    title: 'Fair',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Fair.html',
  ),

  /// Frameworx Open License 1.0
  frameworx_1_0(
    /// SPDX Licence Title
    title: 'Frameworx-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Frameworx-1.0.html',
  ),

  /// FreeImage Public License v1.0
  free_image(
    /// SPDX Licence Title
    title: 'FreeImage',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/FreeImage.html',
  ),

  /// GNU Free Documentation License v1.1 only - invariants
  gfdl_1_1_invariants_only(
    /// SPDX Licence Title
    title: 'GFDL-1.1-invariants-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.1-invariants-only.html',
  ),

  /// GNU Free Documentation License v1.1 or later - invariants
  gfdl_1_1_invariants_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.1-invariants-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.1-invariants-or-later.html',
  ),

  /// GNU Free Documentation License v1.1 only - no invariants
  gfdl_1_1_no_invariants_only(
    /// SPDX Licence Title
    title: 'GFDL-1.1-no-invariants-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.1-no-invariants-only.html',
  ),

  /// FSF Unlimited License
  gfdl_1_1_no_invariants_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.1-no-invariants-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.1-no-invariants-or-later.html',
  ),

  /// GNU Free Documentation License v1.1 only
  gfdl_1_1_only(
    /// SPDX Licence Title
    title: 'GFDL-1.1-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.1-only.html',
  ),

  /// GNU Free Documentation License v1.1 or later
  gfdl_1_1_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.1-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.1-or-later.html',
  ),

  /// GNU Free Documentation License v1.2 only - invariants
  gfdl_1_2_invariants_only(
    /// SPDX Licence Title
    title: 'GFDL-1.2-invariants-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.2-invariants-only.html',
  ),

  /// GNU Free Documentation License v1.2 or later - invariants
  gfdl_1_2_invariants_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.2-invariants-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.2-invariants-or-later.html',
  ),

  /// GNU Free Documentation License v1.2 only - no invariants
  gfdl_1_2_no_invariants_only(
    /// SPDX Licence Title
    title: 'GFDL-1.2-no-invariants-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.2-no-invariants-only.html',
  ),

  /// GNU Free Documentation License v1.2 or later - no invariants
  gfdl_1_2_no_invariants_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.2-no-invariants-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.2-no-invariants-or-later.html',
  ),

  /// GNU Free Documentation License v1.2 only
  gfdl_1_2_only(
    /// SPDX Licence Title
    title: 'GFDL-1.2-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.2-only.html',
  ),

  /// GNU Free Documentation License v1.2 or later
  gfdl_1_2_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.2-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.2-or-later.html',
  ),

  /// GNU Free Documentation License v1.3 only - invariants
  gfdl_1_3_invariants_only(
    /// SPDX Licence Title
    title: 'GFDL-1.3-invariants-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.3-invariants-only.html',
  ),

  /// GNU Free Documentation License v1.3 or later - invariants
  gfdl_1_3_invariants_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.3-invariants-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.3-invariants-or-later.html',
  ),

  /// GNU Free Documentation License v1.3 only - no invariants
  gfdl_1_3_no_invariants_only(
    /// SPDX Licence Title
    title: 'GFDL-1.3-no-invariants-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.3-no-invariants-only.html',
  ),

  /// GNU Free Documentation License v1.3 or later - no invariants
  gfdl_1_3_no_invariants_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.3-no-invariants-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.3-no-invariants-or-later.html',
  ),

  /// GNU Free Documentation License v1.3 only
  gfdl_1_3_only(
    /// SPDX Licence Title
    title: 'GFDL-1.3-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.3-only.html',
  ),

  /// GNU Free Documentation License v1.3 or later
  gfdl_1_3_or_later(
    /// SPDX Licence Title
    title: 'GFDL-1.3-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GFDL-1.3-or-later.html',
  ),

  /// GL2PS License
  gl2ps(
    /// SPDX Licence Title
    title: 'GL2PS',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GL2PS.html',
  ),

  /// Good Luck With That Public License
  glwtpl(
    /// SPDX Licence Title
    title: 'GLWTPL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GLWTPL.html',
  ),

  /// GNU General Public License v1.0 only
  gpl_1_0_only(
    /// SPDX Licence Title
    title: 'GPL-1.0-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GPL-1.0-only.html',
  ),

  /// GNU General Public License v1.0 or later
  gpl_1_0_or_later(
    /// SPDX Licence Title
    title: 'GPL-1.0-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GPL-1.0-or-later.html',
  ),

  /// GNU General Public License v2.0 only
  gpl_2_0_only(
    /// SPDX Licence Title
    title: 'GPL-2.0-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GPL-2.0-only.html',
  ),

  /// GNU General Public License v2.0 or later
  gpl_2_0_or_later(
    /// SPDX Licence Title
    title: 'GPL-2.0-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GPL-2.0-or-later.html',
  ),

  /// GNU General Public License v3.0 only
  gpl_3_0_only(
    /// SPDX Licence Title
    title: 'GPL-3.0-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GPL-3.0-only.html',
  ),

  /// GNU General Public License v3.0 or later
  gpl_3_0_or_later(
    /// SPDX Licence Title
    title: 'GPL-3.0-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/GPL-3.0-or-later.html',
  ),

  /// Giftware License
  giftware(
    /// SPDX Licence Title
    title: 'Giftware',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Giftware.html',
  ),

  /// 3dfx Glide License
  glide(
    /// SPDX Licence Title
    title: 'Glide',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Glide.html',
  ),

  /// Glulxe License
  glulxe(
    /// SPDX Licence Title
    title: 'Glulxe',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Glulxe.html',
  ),

  /// Historical Permission Notice and Disclaimer
  hpnd(
    /// SPDX Licence Title
    title: 'HPND',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/HPND.html',
  ),

  /// Historical Permission Notice and Disclaimer - sell variant
  hpnd_sell_variant(
    /// SPDX Licence Title
    title: 'HPND-sell-variant',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/HPND-sell-variant.html',
  ),

  /// HTML Tidy License
  htmltidy(
    /// SPDX Licence Title
    title: 'HTMLTIDY',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/HTMLTIDY.html',
  ),

  /// Haskell Language Report License
  haskell_report(
    /// SPDX Licence Title
    title: 'HaskellReport',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/HaskellReport.html',
  ),

  /// Hippocratic License 2.1
  hippocratic_2_1(
    /// SPDX Licence Title
    title: 'Hippocratic-2.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Hippocratic-2.1.html',
  ),

  /// IBM PowerPC Initialization and Boot Software
  ibm_pibs(
    /// SPDX Licence Title
    title: 'IBM-pibs',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/IBM-pibs.html',
  ),

  /// ICU License
  icu(
    /// SPDX Licence Title
    title: 'ICU',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ICU.html',
  ),

  /// Independent JPEG Group License
  ijg(
    /// SPDX Licence Title
    title: 'IJG',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/IJG.html',
  ),

  /// IPA Font License
  ipa(
    /// SPDX Licence Title
    title: 'IPA',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/IPA.html',
  ),

  /// IBM Public License v1.0
  ipl_1_0(
    /// SPDX Licence Title
    title: 'IPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/IPL-1.0.html',
  ),

  /// ISC License
  isc(
    /// SPDX Licence Title
    title: 'ISC',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ISC.html',
  ),

  /// ImageMagick License
  image_magick(
    /// SPDX Licence Title
    title: 'ImageMagick',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ImageMagick.html',
  ),

  /// Imlib2 License
  imlib2(
    /// SPDX Licence Title
    title: 'Imlib2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Imlib2.html',
  ),

  /// Info-ZIP License
  info_zip(
    /// SPDX Licence Title
    title: 'Info-ZIP',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Info-ZIP.html',
  ),

  /// Intel Open Source License
  intel(
    /// SPDX Licence Title
    title: 'Intel',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Intel.html',
  ),

  /// Intel ACPI Software License Agreement
  intel_acpi(
    /// SPDX Licence Title
    title: 'Intel-ACPI',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Intel-ACPI.html',
  ),

  /// Interbase Public License v1.0
  interbase_1_0(
    /// SPDX Licence Title
    title: 'Interbase-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Interbase-1.0.html',
  ),

  /// Japan Network Information Center License
  jpnic(
    /// SPDX Licence Title
    title: 'JPNIC',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/JPNIC.html',
  ),

  /// JSON License
  json(
    /// SPDX Licence Title
    title: 'JSON',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/JSON.html',
  ),

  /// JasPer License
  jasPer_2_0(
    /// SPDX Licence Title
    title: 'JasPer-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/JasPer-2.0.html',
  ),

  /// Licence Art Libre 1.2
  lal_1_2(
    /// SPDX Licence Title
    title: 'LAL-1.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LAL-1.2.html',
  ),

  /// Licence Art Libre 1.3
  lal_1_3(
    /// SPDX Licence Title
    title: 'LAL-1.3',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LAL-1.3.html',
  ),

  /// GNU Library General Public License v2 only
  lgpl_2_0_only(
    /// SPDX Licence Title
    title: 'LGPL-2.0-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LGPL-2.0-only.html',
  ),

  /// GNU Library General Public License v2 or later
  lgpl_2_0_or_later(
    /// SPDX Licence Title
    title: 'LGPL-2.0-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LGPL-2.0-or-later.html',
  ),

  /// GNU Lesser General Public License v2.1 only
  lgpl_2_1_only(
    /// SPDX Licence Title
    title: 'LGPL-2.1-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LGPL-2.1-only.html',
  ),

  /// GNU Lesser General Public License v2.1 or later
  lgpl_2_1_or_later(
    /// SPDX Licence Title
    title: 'LGPL-2.1-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LGPL-2.1-or-later.html',
  ),

  /// GNU Lesser General Public License v3.0 only
  lgpl_3_0_only(
    /// SPDX Licence Title
    title: 'LGPL-3.0-only',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LGPL-3.0-only.html',
  ),

  /// GNU Lesser General Public License v3.0 or later
  lgpl_3_0_or_later(
    /// SPDX Licence Title
    title: 'LGPL-3.0-or-later',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LGPL-3.0-or-later.html',
  ),

  /// Lesser General Public License For Linguistic Resources
  lgpllr(
    /// SPDX Licence Title
    title: 'LGPLLR',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LGPLLR.html',
  ),

  /// Lucent Public License Version 1.0
  lbl_1_0(
    /// SPDX Licence Title
    title: 'LPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LPL-1.0.html',
  ),

  /// Lucent Public License Version 1.02
  lbl_1_02(
    /// SPDX Licence Title
    title: 'LPL-1.02',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LPL-1.02.html',
  ),

  /// LaTeX Project Public License v1.0
  lppl_1_0(
    /// SPDX Licence Title
    title: 'LPPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LPPL-1.0.html',
  ),

  /// LaTeX Project Public License v1.1
  lppl_1_1(
    /// SPDX Licence Title
    title: 'LPPL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LPPL-1.1.html',
  ),

  /// LaTeX Project Public License v1.2
  lppl_1_2(
    /// SPDX Licence Title
    title: 'LPPL-1.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LPPL-1.2.html',
  ),

  /// LaTeX Project Public License v1.3a
  lppl_1_3a(
    /// SPDX Licence Title
    title: 'LPPL-1.3a',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LPPL-1.3a.html',
  ),

  /// LaTeX Project Public License v1.3c
  lppl_1_3c(
    /// SPDX Licence Title
    title: 'LPPL-1.3c',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LPPL-1.3c.html',
  ),

  /// Latex2e License
  latex2e(
    /// SPDX Licence Title
    title: 'Latex2e',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Latex2e.html',
  ),

  /// Leptonica License
  leptonica(
    /// SPDX Licence Title
    title: 'Leptonica',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Leptonica.html',
  ),

  /// Licence Libre du Québec – Permissive version 1.1
  li_li_q_p_1_1(
    /// SPDX Licence Title
    title: 'LiLiQ-P-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LiLiQ-P-1.1.html',
  ),

  /// Licence Libre du Québec – Réciprocité version 1.1
  li_li_q_r_1_1(
    /// SPDX Licence Title
    title: 'LiLiQ-R-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LiLiQ-R-1.1.html',
  ),

  /// Licence Libre du Québec – Réciprocité forte version 1.1
  li_li_q_r_plus_1_1(
    /// SPDX Licence Title
    title: 'LiLiQ-Rplus-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/LiLiQ-Rplus-1.1.html',
  ),

  /// Libpng License
  libpng(
    /// SPDX Licence Title
    title: 'Libpng',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Libpng.html',
  ),

  /// Linux Kernel Variant of OpenIB.org license
  linux_open_ib(
    /// SPDX Licence Title
    title: 'Linux-OpenIB',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Linux-OpenIB.html',
  ),

  /// MIT License
  mit(
    /// SPDX Licence Title
    title: 'MIT',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MIT.html',
  ),

  /// MIT No Attribution
  mit_0(
    /// SPDX Licence Title
    title: 'MIT-0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MIT-0.html',
  ),

  /// CMU License
  mit_cmu(
    /// SPDX Licence Title
    title: 'MIT-CMU',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MIT-CMU.html',
  ),

  /// Enlightenment License (e16)
  mit_advertising(
    /// SPDX Licence Title
    title: 'MIT-advertising',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MIT-advertising.html',
  ),

  /// enna License
  mit_enna(
    /// SPDX Licence Title
    title: 'MIT-enna',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MIT-enna.html',
  ),

  /// feh License
  mit_feh(
    /// SPDX Licence Title
    title: 'MIT-feh',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MIT-feh.html',
  ),

  /// MIT Open Group variant
  mit_open_group(
    /// SPDX Licence Title
    title: 'MIT-open-group',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MIT-open-group.html',
  ),

  /// MIT +no-false-attribs license
  mitnfa(
    /// SPDX Licence Title
    title: 'MITNFA',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MITNFA.html',
  ),

  /// Mozilla Public License 1.0
  mpl_1_0(
    /// SPDX Licence Title
    title: 'MPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MPL-1.0.html',
  ),

  /// Mozilla Public License 1.1
  mpl_1_1(
    /// SPDX Licence Title
    title: 'MPL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MPL-1.1.html',
  ),

  /// Mozilla Public License 2.0
  mpl_2_0(
    /// SPDX Licence Title
    title: 'MPL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MPL-2.0.html',
  ),

  /// Mozilla Public License 2.0 (no copyleft exception)
  mpl_2_0_no_copyleft_exception(
    /// SPDX Licence Title
    title: 'MPL-2.0-no-copyleft-exception',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MPL-2.0-no-copyleft-exception.html',
  ),

  /// Microsoft Public License
  ms_pl(
    /// SPDX Licence Title
    title: 'MS-PL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MS-PL.html',
  ),

  /// Microsoft Reciprocal License
  ms_rl(
    /// SPDX Licence Title
    title: 'MS-RL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MS-RL.html',
  ),

  /// Matrix Template Library License
  mtll(
    /// SPDX Licence Title
    title: 'MTLL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MTLL.html',
  ),

  /// MakeIndex License
  make_index(
    /// SPDX Licence Title
    title: 'MakeIndex',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MakeIndex.html',
  ),

  /// The MirOS License
  mir_os(
    /// SPDX Licence Title
    title: 'MirOS',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MirOS.html',
  ),

  /// Motosoto License
  motosoto(
    /// SPDX Licence Title
    title: 'Motosoto',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Motosoto.html',
  ),

  /// Mulan Permissive Software License, Version 1
  mulan_psl_1_0(
    /// SPDX Licence Title
    title: 'MulanPSL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MulanPSL-1.0.html',
  ),

  /// Mulan Permissive Software License, Version 2
  mulan_psl_2_0(
    /// SPDX Licence Title
    title: 'MulanPSL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/MulanPSL-2.0.html',
  ),

  /// Multics License
  multics(
    /// SPDX Licence Title
    title: 'Multics',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Multics.html',
  ),

  /// Mup License
  mup(
    /// SPDX Licence Title
    title: 'Mup',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Mup.html',
  ),

  /// NASA Open Source Agreement 1.3
  nasa_1_3(
    /// SPDX Licence Title
    title: 'NASA-1.3',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NASA-1.3.html',
  ),

  /// Net Boolean Public License v1
  nbpl_1_0(
    /// SPDX Licence Title
    title: 'NBPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NBPL-1.0.html',
  ),

  /// Non-Commercial Government Licence
  ncgl_uk_2_0(
    /// SPDX Licence Title
    title: 'NCGL-UK-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NCGL-UK-2.0.html',
  ),

  /// University of Illinois/NCSA Open Source License
  ncsa(
    /// SPDX Licence Title
    title: 'NCSA',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NCSA.html',
  ),

  /// Nethack General Public License
  ngpl(
    /// SPDX Licence Title
    title: 'NGPL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NGPL.html',
  ),

  /// NIST Public Domain Notice
  nist_pd(
    /// SPDX Licence Title
    title: 'NIST-PD',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NIST-PD.html',
  ),

  /// NIST Public Domain Notice with license fallback
  nist_pd_fallback(
    /// SPDX Licence Title
    title: 'NIST-PD-fallback',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NIST-PD-fallback.html',
  ),

  /// Norwegian Licence for Open Government Data (NLOD) 1.0
  nlod_1_0(
    /// SPDX Licence Title
    title: 'NLOD-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NLOD-1.0.html',
  ),

  /// No Limit Public License
  nlpl(
    /// SPDX Licence Title
    title: 'NLPL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NLPL.html',
  ),

  /// Netizen Open Source License
  nosl(
    /// SPDX Licence Title
    title: 'NOSL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NOSL.html',
  ),

  /// Netscape Public License v1.0
  npl_1_0(
    /// SPDX Licence Title
    title: 'NPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NPL-1.0.html',
  ),

  /// Netscape Public License v1.1
  npl_1_1(
    /// SPDX Licence Title
    title: 'NPL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NPL-1.1.html',
  ),

  /// Non-Profit Open Software License 3.0
  nposl_3_0(
    /// SPDX Licence Title
    title: 'NPOSL-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NPOSL-3.0.html',
  ),

  /// NRL License
  nrl(
    /// SPDX Licence Title
    title: 'NRL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NRL.html',
  ),

  /// NTP License
  ntp(
    /// SPDX Licence Title
    title: 'NTP',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NTP.html',
  ),

  /// NTP No Attribution
  ntp_0(
    /// SPDX Licence Title
    title: 'NTP-0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NTP-0.html',
  ),

  /// Naumen Public License
  naumen(
    /// SPDX Licence Title
    title: 'Naumen',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Naumen.html',
  ),

  /// Net-SNMP License
  net_snmp(
    /// SPDX Licence Title
    title: 'Net-SNMP',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Net-SNMP.html',
  ),

  /// NetCDF License
  net_cdf(
    /// SPDX Licence Title
    title: 'NetCDF',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/NetCDF.html',
  ),

  /// Newsletr License
  newsletr(
    /// SPDX Licence Title
    title: 'Newsletr',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Newsletr.html',
  ),

  /// Nokia Open Source License
  nokia(
    /// SPDX Licence Title
    title: 'Nokia',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Nokia.html',
  ),

  /// Noweb License
  noweb(
    /// SPDX Licence Title
    title: 'Noweb',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Noweb.html',
  ),

  /// Open Use of Data Agreement v1.0
  o_uda_1_0(
    /// SPDX Licence Title
    title: 'O-UDA-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/O-UDA-1.0.html',
  ),

  /// Open CASCADE Technology Public License
  occt_pl(
    /// SPDX Licence Title
    title: 'OCCT-PL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OCCT-PL.html',
  ),

  /// OCLC Research Public License 2.0
  oclc_2_0(
    /// SPDX Licence Title
    title: 'OCLC-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OCLC-2.0.html',
  ),

  /// Open Data Commons Attribution License v1.0
  odc_by_1_0(
    /// SPDX Licence Title
    title: 'ODC-By-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ODC-By-1.0.html',
  ),

  /// Open Data Commons Open Database License v1.0
  od_bl_1_0(
    /// SPDX Licence Title
    title: 'ODbL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ODbL-1.0.html',
  ),

  /// SIL Open Font License 1.0
  ofl_1_0(
    /// SPDX Licence Title
    title: 'OFL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OFL-1.0.html',
  ),

  /// SIL Open Font License 1.0 with Reserved Font Name
  ofl_1_0_rfn(
    /// SPDX Licence Title
    title: 'OFL-1.0-RFN',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OFL-1.0-RFN.html',
  ),

  /// SIL Open Font License 1.0 with no Reserved Font Name
  ofl_1_0_no_rfn(
    /// SPDX Licence Title
    title: 'OFL-1.0-no-RFN',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OFL-1.0-no-RFN.html',
  ),

  /// SIL Open Font License 1.1
  ofl_1_1(
    /// SPDX Licence Title
    title: 'OFL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OFL-1.1.html',
  ),

  /// SIL Open Font License 1.1 with Reserved Font Name
  ofl_1_1_rfn(
    /// SPDX Licence Title
    title: 'OFL-1.1-RFN',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OFL-1.1-RFN.html',
  ),

  /// SIL Open Font License 1.1 with no Reserved Font Name
  ofl_1_1_no_rfn(
    /// SPDX Licence Title
    title: 'OFL-1.1-no-RFN',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OFL-1.1-no-RFN.html',
  ),

  /// OGC Software License, Version 1.0
  ogc_1_0(
    /// SPDX Licence Title
    title: 'OGC-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OGC-1.0.html',
  ),

  /// Open Government Licence - Canada
  ogl_canada_2_0(
    /// SPDX Licence Title
    title: 'OGL-Canada-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OGL-Canada-2.0.html',
  ),

  /// Open Government Licence v1.0
  ogl_uk_1_0(
    /// SPDX Licence Title
    title: 'OGL-UK-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OGL-UK-1.0.html',
  ),

  /// Open Government Licence v2.0
  ogl_uk_2_0(
    /// SPDX Licence Title
    title: 'OGL-UK-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OGL-UK-2.0.html',
  ),

  /// Open Government Licence v3.0
  ogl_uk_3_0(
    /// SPDX Licence Title
    title: 'OGL-UK-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OGL-UK-3.0.html',
  ),

  /// Open Group Test Suite License
  ogtsl(
    /// SPDX Licence Title
    title: 'OGTSL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OGTSL.html',
  ),

  /// Open LDAP Public License v1.1
  oldap_1_1(
    /// SPDX Licence Title
    title: 'OLDAP-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-1.1.html',
  ),

  /// Open LDAP Public License v1.2
  oldap_1_2(
    /// SPDX Licence Title
    title: 'OLDAP-1.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-1.2.html',
  ),

  /// Open LDAP Public License v1.3
  oldap_1_3(
    /// SPDX Licence Title
    title: 'OLDAP-1.3',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-1.3.html',
  ),

  /// Open LDAP Public License v1.4
  oldap_1_4(
    /// SPDX Licence Title
    title: 'OLDAP-1.4',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-1.4.html',
  ),

  /// Open LDAP Public License v2.0 (or possibly 2.0A and 2.0B)
  oldap_2_0(
    /// SPDX Licence Title
    title: 'OLDAP-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.0.html',
  ),

  /// Open LDAP Public License v2.0.1
  oldap_2_0_1(
    /// SPDX Licence Title
    title: 'OLDAP-2.0.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.0.1.html',
  ),

  /// Open LDAP Public License v2.1
  oldap_2_1(
    /// SPDX Licence Title
    title: 'OLDAP-2.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.1.html',
  ),

  /// Open LDAP Public License v2.2
  oldap_2_2(
    /// SPDX Licence Title
    title: 'OLDAP-2.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.2.html',
  ),

  /// Open LDAP Public License v2.2.1
  oldap_2_2_1(
    /// SPDX Licence Title
    title: 'OLDAP-2.2.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.2.1.html',
  ),

  /// Open LDAP Public License v2.2.2
  oldap_2_2_2(
    /// SPDX Licence Title
    title: 'OLDAP-2.2.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.2.2.html',
  ),

  /// Open LDAP Public License v2.3
  oldap_2_3(
    /// SPDX Licence Title
    title: 'OLDAP-2.3',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.3.html',
  ),

  /// Open LDAP Public License v2.4
  oldap_2_4(
    /// SPDX Licence Title
    title: 'OLDAP-2.4',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.4.html',
  ),

  /// Open LDAP Public License v2.5
  oldap_2_5(
    /// SPDX Licence Title
    title: 'OLDAP-2.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.5.html',
  ),

  /// Open LDAP Public License v2.6
  oldap_2_6(
    /// SPDX Licence Title
    title: 'OLDAP-2.6',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.6.html',
  ),

  /// Open LDAP Public License v2.7
  oldap_2_7(
    /// SPDX Licence Title
    title: 'OLDAP-2.7',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.7.html',
  ),

  /// Open LDAP Public License v2.8
  oldap_2_8(
    /// SPDX Licence Title
    title: 'OLDAP-2.8',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OLDAP-2.8.html',
  ),

  /// Open Market License
  oml(
    /// SPDX Licence Title
    title: 'OML',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OML.html',
  ),

  /// Open Public License v1.0
  opl_1_0(
    /// SPDX Licence Title
    title: 'OPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OPL-1.0.html',
  ),

  /// OSET Public License version 2.1
  oset_pl_2_1(
    /// SPDX Licence Title
    title: 'OSET-PL-2.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OSET-PL-2.1.html',
  ),

  /// Open Software License 1.0
  osl_1_0(
    /// SPDX Licence Title
    title: 'OSL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OSL-1.0.html',
  ),

  /// Open Software License 1.1
  osl_1_1(
    /// SPDX Licence Title
    title: 'OSL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OSL-1.1.html',
  ),

  /// Open Software License 2.0
  osl_2_0(
    /// SPDX Licence Title
    title: 'OSL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OSL-2.0.html',
  ),

  /// Open Software License 2.1
  osl_2_1(
    /// SPDX Licence Title
    title: 'OSL-2.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OSL-2.1.html',
  ),

  /// Open Software License 3.0
  osl_3_0(
    /// SPDX Licence Title
    title: 'OSL-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OSL-3.0.html',
  ),

  /// OpenSSL License
  open_ssl(
    /// SPDX Licence Title
    title: 'OpenSSL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/OpenSSL.html',
  ),

  /// Open Data Commons Public Domain Dedication & License 1.0
  pddl_1_0(
    /// SPDX Licence Title
    title: 'PDDL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/PDDL-1.0.html',
  ),

  /// PHP License v3.0
  php_3_0(
    /// SPDX Licence Title
    title: 'PHP-3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/PHP-3.0.html',
  ),

  /// PHP License v3.01
  php_3_01(
    /// SPDX Licence Title
    title: 'PHP-3.01',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/PHP-3.01.html',
  ),

  /// Python Software Foundation License 2.0
  psf_2_0(
    /// SPDX Licence Title
    title: 'PSF-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/PSF-2.0.html',
  ),

  /// The Parity Public License 6.0.0
  parity_6_0_0(
    /// SPDX Licence Title
    title: 'Parity-6.0.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Parity-6.0.0.html',
  ),

  /// The Parity Public License 7.0.0
  parity_7_0_0(
    /// SPDX Licence Title
    title: 'Parity-7.0.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Parity-7.0.0.html',
  ),

  /// Plexus Classworlds License
  plexus(
    /// SPDX Licence Title
    title: 'Plexus',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Plexus.html',
  ),

  /// PolyForm Noncommercial License 1.0.0
  poly_form_noncommercial_1_0_0(
    /// SPDX Licence Title
    title: 'PolyForm-Noncommercial-1.0.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/PolyForm-Noncommercial-1.0.0.html',
  ),

  /// PolyForm Small Business License 1.0.0
  poly_form_small_business_1_0_0(
    /// SPDX Licence Title
    title: 'PolyForm-Small-Business-1.0.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/PolyForm-Small-Business-1.0.0.html',
  ),

  /// PostgreSQL License
  postgre_sql(
    /// SPDX Licence Title
    title: 'PostgreSQL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/PostgreSQL.html',
  ),

  /// Python License 2.0
  python_2_0(
    /// SPDX Licence Title
    title: 'Python-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Python-2.0.html',
  ),

  /// Q Public License 1.0
  qpl_1_0(
    /// SPDX Licence Title
    title: 'QPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/QPL-1.0.html',
  ),

  /// Qhull License
  q_hull(
    /// SPDX Licence Title
    title: 'Qhull',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Qhull.html',
  ),

  /// Red Hat eCos Public License v1.1
  rh_e_cos_1_1(
    /// SPDX Licence Title
    title: 'RHeCos-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/RHeCos-1.1.html',
  ),

  /// Reciprocal Public License 1.1
  rpl_1_1(
    /// SPDX Licence Title
    title: 'RPL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/RPL-1.1.html',
  ),

  /// Reciprocal Public License 1.5
  rpl_1_5(
    /// SPDX Licence Title
    title: 'RPL-1.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/RPL-1.5.html',
  ),

  /// RealNetworks Public Source License v1.0
  rpsl_1_0(
    /// SPDX Licence Title
    title: 'RPSL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/RPSL-1.0.html',
  ),

  /// RSA Message-Digest License
  rsa_md(
    /// SPDX Licence Title
    title: 'RSA-MD',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/RSA-MD.html',
  ),

  /// Ricoh Source Code Public License
  rscpl(
    /// SPDX Licence Title
    title: 'RSCPL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/RSCPL.html',
  ),

  /// Rdisc License
  rdisc(
    /// SPDX Licence Title
    title: 'Rdisc',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Rdisc.html',
  ),

  /// Ruby License
  ruby(
    /// SPDX Licence Title
    title: 'Ruby',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Ruby.html',
  ),

  /// Sax Public Domain Notice
  sax_pd(
    /// SPDX Licence Title
    title: 'SAX-PD',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SAX-PD.html',
  ),

  /// SCEA Shared Source License
  scea(
    /// SPDX Licence Title
    title: 'SCEA',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SCEA.html',
  ),

  /// SGI Free Software License B v1.0
  sgi_b_1_0(
    /// SPDX Licence Title
    title: 'SGI-B-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SGI-B-1.0.html',
  ),

  /// SGI Free Software License B v1.1
  sgi_b_1_1(
    /// SPDX Licence Title
    title: 'SGI-B-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SGI-B-1.1.html',
  ),

  /// SGI Free Software License B v2.0
  sgi_b_2_0(
    /// SPDX Licence Title
    title: 'SGI-B-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SGI-B-2.0.html',
  ),

  /// Solderpad Hardware License v0.5
  shl_0_5(
    /// SPDX Licence Title
    title: 'SHL-0.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SHL-0.5.html',
  ),

  /// Solderpad Hardware License, Version 0.51
  shl_0_51(
    /// SPDX Licence Title
    title: 'SHL-0.51',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SHL-0.51.html',
  ),

  /// Sun Industry Standards Source License v1.1
  sissl(
    /// SPDX Licence Title
    title: 'SISSL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SISSL.html',
  ),

  /// Sun Industry Standards Source License v1.2
  sissl_1_2(
    /// SPDX Licence Title
    title: 'SISSL-1.2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SISSL-1.2.html',
  ),

  /// Standard ML of New Jersey License
  smlnj(
    /// SPDX Licence Title
    title: 'SMLNJ',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SMLNJ.html',
  ),

  /// Secure Messaging Protocol Public License
  smppl(
    /// SPDX Licence Title
    title: 'SMPPL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SMPPL.html',
  ),

  /// SNIA Public License 1.1
  snia(
    /// SPDX Licence Title
    title: 'SNIA',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SNIA.html',
  ),

  /// Sun Public License v1.0
  spl_1_0(
    /// SPDX Licence Title
    title: 'SPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SPL-1.0.html',
  ),

  /// SSH OpenSSH license
  ssh_open_ssh(
    /// SPDX Licence Title
    title: 'SSH-OpenSSH',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SSH-OpenSSH.html',
  ),

  /// SSH short notice
  ssh_short(
    /// SPDX Licence Title
    title: 'SSH-short',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SSH-short.html',
  ),

  /// Server Side Public License, v 1
  sspl_1_0(
    /// SPDX Licence Title
    title: 'SSPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SSPL-1.0.html',
  ),

  /// Scheme Widget Library (SWL) Software License Agreement
  swl(
    /// SPDX Licence Title
    title: 'SWL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SWL.html',
  ),

  /// Saxpath License
  saxpath(
    /// SPDX Licence Title
    title: 'Saxpath',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Saxpath.html',
  ),

  /// Sendmail License
  sendmail(
    /// SPDX Licence Title
    title: 'Sendmail',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Sendmail.html',
  ),

  /// Sendmail License 8.23
  sendmail_8_23(
    /// SPDX Licence Title
    title: 'Sendmail-8.23',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Sendmail-8.23.html',
  ),

  /// Simple Public License 2.0
  sim_pl_2_0(
    /// SPDX Licence Title
    title: 'SimPL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SimPL-2.0.html',
  ),

  /// Sleepycat License
  sleepycat(
    /// SPDX Licence Title
    title: 'Sleepycat',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Sleepycat.html',
  ),

  /// Spencer License 86
  spencer_86(
    /// SPDX Licence Title
    title: 'Spencer-86',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Spencer-86.html',
  ),

  /// Spencer License 94
  spencer_94(
    /// SPDX Licence Title
    title: 'Spencer-94',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Spencer-94.html',
  ),

  /// Spencer License 99
  spencer_99(
    /// SPDX Licence Title
    title: 'Spencer-99',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Spencer-99.html',
  ),

  /// SugarCRM Public License v1.1.3
  sugar_crm_1_1_3(
    /// SPDX Licence Title
    title: 'SugarCRM-1.1.3',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/SugarCRM-1.1.3.html',
  ),

  /// TAPR Open Hardware License v1.0
  tapr_ohl_1_0(
    /// SPDX Licence Title
    title: 'TAPR-OHL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/TAPR-OHL-1.0.html',
  ),

  /// TCL/TK License
  tcl(
    /// SPDX Licence Title
    title: 'TCL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/TCL.html',
  ),

  /// TCP Wrappers License
  tcp_wrappers(
    /// SPDX Licence Title
    title: 'TCP-wrappers',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/TCP-wrappers.html',
  ),

  /// TMate Open Source License
  t_mate(
    /// SPDX Licence Title
    title: 'TMate',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/TMate.html',
  ),

  /// TORQUE v2.5+ Software License v1.1
  torque_1_1(
    /// SPDX Licence Title
    title: 'TORQUE-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/TORQUE-1.1.html',
  ),

  /// Trusster Open Source License
  tosl(
    /// SPDX Licence Title
    title: 'TOSL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/TOSL.html',
  ),

  /// Technische Universitaet Berlin License 1.0
  tu_berlin_1_0(
    /// SPDX Licence Title
    title: 'TU-Berlin-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/TU-Berlin-1.0.html',
  ),

  /// Technische Universitaet Berlin License 2.0
  tu_berlin_2_0(
    /// SPDX Licence Title
    title: 'TU-Berlin-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/TU-Berlin-2.0.html',
  ),

  /// Upstream Compatibility License v1.0
  ucl_1_0(
    /// SPDX Licence Title
    title: 'UCL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/UCL-1.0.html',
  ),

  /// Universal Permissive License v1.0
  upl_1_0(
    /// SPDX Licence Title
    title: 'UPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/UPL-1.0.html',
  ),

  /// Unicode License Agreement - Data Files and Software (2015)
  unicode_dfs_2015(
    /// SPDX Licence Title
    title: 'Unicode-DFS-2015',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Unicode-DFS-2015.html',
  ),

  /// Unicode License Agreement - Data Files and Software (2016)
  unicode_dfs_2016(
    /// SPDX Licence Title
    title: 'Unicode-DFS-2016',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Unicode-DFS-2016.html',
  ),

  /// Unicode Terms of Use
  unicode_tou(
    /// SPDX Licence Title
    title: 'Unicode-TOU',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Unicode-TOU.html',
  ),

  /// The Unlicense
  unlicense(
    /// SPDX Licence Title
    title: 'Unlicense',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Unlicense.html',
  ),

  /// VOSTROM Public License for Open Source
  vostrom(
    /// SPDX Licence Title
    title: 'VOSTROM',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/VOSTROM.html',
  ),

  /// Vovida Software License v1.0
  vsl_1_0(
    /// SPDX Licence Title
    title: 'VSL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/VSL-1.0.html',
  ),

  /// Vim License
  vim(
    /// SPDX Licence Title
    title: 'Vim',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Vim.html',
  ),

  /// W3C Software Notice and License (2002-12-31)
  w3c(
    /// SPDX Licence Title
    title: 'W3C',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/W3C.html',
  ),

  /// W3C Software Notice and License (1998-07-20)
  w3c_19980720(
    /// SPDX Licence Title
    title: 'W3C-19980720',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/W3C-19980720.html',
  ),

  /// W3C Software Notice and Document License (2015-05-13)
  w3c_20150513(
    /// SPDX Licence Title
    title: 'W3C-20150513',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/W3C-20150513.html',
  ),

  /// Do What The F*ck You Want To Public License
  wtfpl(
    /// SPDX Licence Title
    title: 'WTFPL',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/WTFPL.html',
  ),

  /// Sybase Open Watcom Public License 1.0
  watcom_1_0(
    /// SPDX Licence Title
    title: 'Watcom-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Watcom-1.0.html',
  ),

  /// Wsuipa License
  wsuipa(
    /// SPDX Licence Title
    title: 'Wsuipa',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Wsuipa.html',
  ),

  /// X11 License
  x11(
    /// SPDX Licence Title
    title: 'X11',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/X11.html',
  ),

  /// XFree86 License 1.1
  x_free86_1_1(
    /// SPDX Licence Title
    title: 'XFree86-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/XFree86-1.1.html',
  ),

  /// XSkat License
  x_skat(
    /// SPDX Licence Title
    title: 'XSkat',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/XSkat.html',
  ),

  /// Xerox License
  xerox(
    /// SPDX Licence Title
    title: 'Xerox',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Xerox.html',
  ),

  /// X.Net License
  xnet(
    /// SPDX Licence Title
    title: 'Xnet',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Xnet.html',
  ),

  /// Yahoo! Public License v1.0
  ypl_1_0(
    /// SPDX Licence Title
    title: 'YPL-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/YPL-1.0.html',
  ),

  /// Yahoo! Public License v1.1
  ypl_1_1(
    /// SPDX Licence Title
    title: 'YPL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/YPL-1.1.html',
  ),

  /// Zope Public License 1.1
  zpl_1_1(
    /// SPDX Licence Title
    title: 'ZPL-1.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ZPL-1.1.html',
  ),

  /// Zope Public License 2.0
  zpl_2_0(
    /// SPDX Licence Title
    title: 'ZPL-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ZPL-2.0.html',
  ),

  /// Zope Public License 2.1
  zpl_2_1(
    /// SPDX Licence Title
    title: 'ZPL-2.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/ZPL-2.1.html',
  ),

  /// Zed License
  zed(
    /// SPDX Licence Title
    title: 'Zed',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Zed.html',
  ),

  /// Zend License v2.0
  zend_2_0(
    /// SPDX Licence Title
    title: 'Zend-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Zend-2.0.html',
  ),

  /// Zimbra Public License v1.3
  zimbra_1_3(
    /// SPDX Licence Title
    title: 'Zimbra-1.3',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Zimbra-1.3.html',
  ),

  /// Zimbra Public License v1.4
  zimbra_1_4(
    /// SPDX Licence Title
    title: 'Zimbra-1.4',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Zimbra-1.4.html',
  ),

  /// Zlib License
  zlib(
    /// SPDX Licence Title
    title: 'Zlib',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/Zlib.html',
  ),

  /// SQLite Blessing
  blessing(
    /// SPDX Licence Title
    title: 'Blessing',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/blessing.html',
  ),

  /// bzip2 and libbzip2 License v1.0.5
  bzip2_1_0_5(
    /// SPDX Licence Title
    title: 'bzip2-1.0.5',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/bzip2-1.0.5.html',
  ),

  /// bzip2 and libbzip2 License v1.0.6
  bzip2_1_0_6(
    /// SPDX Licence Title
    title: 'bzip2-1.0.6',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/bzip2-1.0.6.html',
  ),

  /// copyleft-next 0.3.0
  copyleft_next_0_3_0(
    /// SPDX Licence Title
    title: 'copyleft-next-0.3.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/copyleft-next-0.3.0.html',
  ),

  /// copyleft-next 0.3.1
  copyleft_next_0_3_1(
    /// SPDX Licence Title
    title: 'copyleft-next-0.3.1',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/copyleft-next-0.3.1.html',
  ),

  /// curl License
  curl(
    /// SPDX Licence Title
    title: 'curl',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/curl.html',
  ),

  /// diffmark License
  diffmark(
    /// SPDX Licence Title
    title: 'diffmark',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/diffmark.html',
  ),

  /// dvipdfm License
  dvipdfm(
    /// SPDX Licence Title
    title: 'dvipdfm',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/dvipdfm.html',
  ),

  /// eGenix.com Public License 1.1.0
  e_genix(
    /// SPDX Licence Title
    title: 'eGenix',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/eGenix.html',
  ),

  /// Etalab Open License 2.0
  etalab_2_0(
    /// SPDX Licence Title
    title: 'etalab-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/etalab-2.0.html',
  ),

  /// gSOAP Public License v1.3b
  g_soap_1_3b(
    /// SPDX Licence Title
    title: 'gSOAP-1.3b',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/gSOAP-1.3b.html',
  ),

  /// gnuplot License
  gnuplot(
    /// SPDX Licence Title
    title: 'gnuplot',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/gnuplot.html',
  ),

  /// iMatix Standard Function Library Agreement
  i_matix(
    /// SPDX Licence Title
    title: 'iMatix',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/iMatix.html',
  ),

  /// PNG Reference Library version 2
  libpng_2_0(
    /// SPDX Licence Title
    title: 'libpng-2.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/libpng-2.0.html',
  ),

  /// libselinux public domain notice
  libselinux_1_0(
    /// SPDX Licence Title
    title: 'libselinux-1.0',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/libselinux-1.0.html',
  ),

  /// libtiff License
  libtiff(
    /// SPDX Licence Title
    title: 'libtiff',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/libtiff.html',
  ),

  /// mpich2 License
  mpich2(
    /// SPDX Licence Title
    title: 'mpich2',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/mpich2.html',
  ),

  /// psfrag License
  psfrag(
    /// SPDX Licence Title
    title: 'psfrag',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/psfrag.html',
  ),

  /// psutils License
  psutils(
    /// SPDX Licence Title
    title: 'psutils',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/psutils.html',
  ),

  /// xinetd License
  xinetd(
    /// SPDX Licence Title
    title: 'xinetd',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/xinetd.html',
  ),

  /// XPP License
  xpp(
    /// SPDX Licence Title
    title: 'xpp',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/xpp.html',
  ),

  /// zlib/libpng License with Acknowledgement
  zlib_acknowledgement(
    /// SPDX Licence Title
    title: 'zlib-acknowledgement',

    /// SPDX Licence URL
    url: 'https://spdx.org/licenses/zlib-acknowledgement.html',
  );

  /// Define const Object from [SPDXLicenceType] class
  const SPDXLicenceType({
    /// Use title property as required attribute
    required this.title,

    /// Use url property as required attribute
    required this.url,
  });

  /// Define [title] property as String and final
  final String title;

  /// Define [url] property as String and final
  final String url;
}
