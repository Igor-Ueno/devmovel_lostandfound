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

<<<<<<< Updated upstream
  /// `All Lost Items`
  String get todos_os_itens_perdidos {
    return Intl.message(
      'All Lost Items',
      name: 'todos_os_itens_perdidos',
=======
  /// `Create neww post`
  String get create_post_title {
    return Intl.message(
      'Create neww post',
      name: 'create_post_title',
>>>>>>> Stashed changes
      desc: '',
      args: [],
    );
  }

<<<<<<< Updated upstream
  /// `No items found`
  String get nenhum_item_encontrado {
    return Intl.message(
      'No items found',
      name: 'nenhum_item_encontrado',
=======
  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
>>>>>>> Stashed changes
      desc: '',
      args: [],
    );
  }

<<<<<<< Updated upstream
  /// `Search Lost Items`
  String get buscar_itens_perdidos {
    return Intl.message(
      'Search Lost Items',
      name: 'buscar_itens_perdidos',
=======
  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
>>>>>>> Stashed changes
      desc: '',
      args: [],
    );
  }

<<<<<<< Updated upstream
  /// `Search items...`
  String get buscar_itens {
    return Intl.message(
      'Search items...',
      name: 'buscar_itens',
=======
  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
>>>>>>> Stashed changes
      desc: '',
      args: [],
    );
  }

<<<<<<< Updated upstream
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
=======
  /// `Photo's URL`
  String get photos_url {
    return Intl.message(
      'Photo\'s URL',
      name: 'photos_url',
>>>>>>> Stashed changes
      desc: '',
      args: [],
    );
  }

<<<<<<< Updated upstream
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
=======
  /// `Create post`
  String get create_post_button {
    return Intl.message(
      'Create post',
      name: 'create_post_button',
>>>>>>> Stashed changes
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
