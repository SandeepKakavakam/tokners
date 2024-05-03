// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LanguageTranslation {
  LanguageTranslation();

  static LanguageTranslation? _current;

  static LanguageTranslation get current {
    assert(_current != null,
        'No instance of LanguageTranslation was loaded. Try to initialize the LanguageTranslation delegate before accessing LanguageTranslation.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LanguageTranslation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LanguageTranslation();
      LanguageTranslation._current = instance;

      return instance;
    });
  }

  static LanguageTranslation of(BuildContext context) {
    final instance = LanguageTranslation.maybeOf(context);
    assert(instance != null,
        'No instance of LanguageTranslation present in the widget tree. Did you add LanguageTranslation.delegate in localizationsDelegates?');
    return instance!;
  }

  static LanguageTranslation? maybeOf(BuildContext context) {
    return Localizations.of<LanguageTranslation>(context, LanguageTranslation);
  }

  /// `api error`
  String get error {
    return Intl.message(
      'api error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Some thing went wrong`
  String get err_something_went_wrong {
    return Intl.message(
      'Some thing went wrong',
      name: 'err_something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `We apologise for the inconvenience,\nplease check your internet connection`
  String get no_internet_subtext {
    return Intl.message(
      'We apologise for the inconvenience,\nplease check your internet connection',
      name: 'no_internet_subtext',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `No Internet connection`
  String get no_internet {
    return Intl.message(
      'No Internet connection',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Tokners`
  String get tokner {
    return Intl.message(
      'Tokners',
      name: 'tokner',
      desc: '',
      args: [],
    );
  }

  /// `Our team`
  String get our_team {
    return Intl.message(
      'Our team',
      name: 'our_team',
      desc: '',
      args: [],
    );
  }

  /// `Tokens`
  String get tokens {
    return Intl.message(
      'Tokens',
      name: 'tokens',
      desc: '',
      args: [],
    );
  }

  /// `Connect wallet`
  String get connect_wallet {
    return Intl.message(
      'Connect wallet',
      name: 'connect_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Lightpaper`
  String get lightpaper {
    return Intl.message(
      'Lightpaper',
      name: 'lightpaper',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `At Tokners we are`
  String get at_tokners_we_are {
    return Intl.message(
      'At Tokners we are',
      name: 'at_tokners_we_are',
      desc: '',
      args: [],
    );
  }

  /// `Reimagining social media through the power of the blockchain.`
  String get home_main_text {
    return Intl.message(
      'Reimagining social media through the power of the blockchain.',
      name: 'home_main_text',
      desc: '',
      args: [],
    );
  }

  /// `We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network`
  String get home_main_description {
    return Intl.message(
      'We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network',
      name: 'home_main_description',
      desc: '',
      args: [],
    );
  }

  /// `Learn More`
  String get learn_more {
    return Intl.message(
      'Learn More',
      name: 'learn_more',
      desc: '',
      args: [],
    );
  }

  /// `Creators can gain independence through a decentralised digital currency system that is dependent on growing and engaging with the community and also their star power. They own 10-15% of the total value of the tokens minted.`
  String get creator_text {
    return Intl.message(
      'Creators can gain independence through a decentralised digital currency system that is dependent on growing and engaging with the community and also their star power. They own 10-15% of the total value of the tokens minted.',
      name: 'creator_text',
      desc: '',
      args: [],
    );
  }

  /// `Holding social tokens allows the individual to gain access to benefits including unreleased content, private communities, direct access to celebrity, early- access to tickets and more as well as the ability to trade with other communities in order to gain access to more creator content with early token buyers being the biggest winners as the value of the token increases with more buyers.`
  String get holder_text {
    return Intl.message(
      'Holding social tokens allows the individual to gain access to benefits including unreleased content, private communities, direct access to celebrity, early- access to tickets and more as well as the ability to trade with other communities in order to gain access to more creator content with early token buyers being the biggest winners as the value of the token increases with more buyers.',
      name: 'holder_text',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<LanguageTranslation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LanguageTranslation> load(Locale locale) =>
      LanguageTranslation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
