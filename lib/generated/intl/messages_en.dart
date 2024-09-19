// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(error) => "Error searching items: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "account_title":
            MessageLookupByLibrary.simpleMessage("Personal account"),
        "allPosts": MessageLookupByLibrary.simpleMessage("All Posts"),
        "buscar_itens": MessageLookupByLibrary.simpleMessage("Search items..."),
        "buscar_itens_perdidos":
            MessageLookupByLibrary.simpleMessage("Search Lost Items"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "createPost": MessageLookupByLibrary.simpleMessage("Create Post"),
        "create_post_button":
            MessageLookupByLibrary.simpleMessage("Create post"),
        "create_post_title":
            MessageLookupByLibrary.simpleMessage("Create neww post"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "error_searching_items": m0,
        "homePageTitle": MessageLookupByLibrary.simpleMessage("Home Page"),
        "nenhum_item_encontrado":
            MessageLookupByLibrary.simpleMessage("No items found"),
        "photos_url": MessageLookupByLibrary.simpleMessage("Photo\'s URL"),
        "searchPost": MessageLookupByLibrary.simpleMessage("Search Post"),
        "title": MessageLookupByLibrary.simpleMessage("Title"),
        "todos_os_itens_perdidos":
            MessageLookupByLibrary.simpleMessage("All Lost Items")
      };
}
