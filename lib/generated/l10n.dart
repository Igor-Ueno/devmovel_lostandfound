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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `All Lost Items`
  String get todos_os_itens_perdidos {
    return Intl.message(
      'All Lost Items',
      name: 'todos_os_itens_perdidos',
      desc: '',
      args: [],
    );
  }

  /// `No items found`
  String get nenhum_item_encontrado {
    return Intl.message(
      'No items found',
      name: 'nenhum_item_encontrado',
      desc: '',
      args: [],
    );
  }

  /// `Search Lost Items`
  String get buscar_itens_perdidos {
    return Intl.message(
      'Search Lost Items',
      name: 'buscar_itens_perdidos',
      desc: '',
      args: [],
    );
  }

  /// `Search items...`
  String get buscar_itens {
    return Intl.message(
      'Search items...',
      name: 'buscar_itens',
      desc: '',
      args: [],
    );
  }

  /// `Error searching items: {error}`
  String error_searching_items(Object error) {
    return Intl.message(
      'Error searching items: $error',
      name: 'error_searching_items',
      desc: '',
      args: [error],
    );
  }

  /// `Home Page`
  String get homePageTitle {
    return Intl.message(
      'Home Page',
      name: 'homePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `All Posts`
  String get allPosts {
    return Intl.message(
      'All Posts',
      name: 'allPosts',
      desc: '',
      args: [],
    );
  }

  /// `Search Post`
  String get searchPost {
    return Intl.message(
      'Search Post',
      name: 'searchPost',
      desc: '',
      args: [],
    );
  }

  /// `Create Post`
  String get createPost {
    return Intl.message(
      'Create Post',
      name: 'createPost',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Personal account`
  String get account_title {
    return Intl.message(
      'Personal account',
      name: 'account_title',
      desc: '',
      args: [],
    );
  }

  /// `Create neww post`
  String get create_post_title {
    return Intl.message(
      'Create neww post',
      name: 'create_post_title',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `URL of profile photo`
  String get photos_url {
    return Intl.message(
      'URL of profile photo',
      name: 'photos_url',
      desc: '',
      args: [],
    );
  }

  /// `Create post`
  String get create_post_button {
    return Intl.message(
      'Create post',
      name: 'create_post_button',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred when creating post`
  String get create_post_error {
    return Intl.message(
      'Error occurred when creating post',
      name: 'create_post_error',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get create_account_title {
    return Intl.message(
      'Create your account',
      name: 'create_account_title',
      desc: '',
      args: [],
    );
  }

  /// `RA`
  String get ra {
    return Intl.message(
      'RA',
      name: 'ra',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get create_account_button {
    return Intl.message(
      'Create account',
      name: 'create_account_button',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred when creating account`
  String get create_account_error {
    return Intl.message(
      'Error occurred when creating account',
      name: 'create_account_error',
      desc: '',
      args: [],
    );
  }

  /// `Required field`
  String get field_warning {
    return Intl.message(
      'Required field',
      name: 'field_warning',
      desc: '',
      args: [],
    );
  }

  /// `Please, fill in all fields of the form`
  String get form_warning {
    return Intl.message(
      'Please, fill in all fields of the form',
      name: 'form_warning',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
