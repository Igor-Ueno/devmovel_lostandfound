// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static String m0(error) => "Erro ao buscar itens: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account": MessageLookupByLibrary.simpleMessage("Conta"),
        "account_title": MessageLookupByLibrary.simpleMessage("Conta pessoal"),
        "allPosts": MessageLookupByLibrary.simpleMessage("Todos os Posts"),
        "buscar_itens": MessageLookupByLibrary.simpleMessage("Buscar itens..."),
        "buscar_itens_perdidos":
            MessageLookupByLibrary.simpleMessage("Buscar itens perdidos"),
        "contact": MessageLookupByLibrary.simpleMessage("Contato"),
        "createPost": MessageLookupByLibrary.simpleMessage("Criar Post"),
        "create_account_button":
            MessageLookupByLibrary.simpleMessage("Criar conta"),
        "create_account_error": MessageLookupByLibrary.simpleMessage(
            "Erro durante a criação da conta"),
        "create_account_title":
            MessageLookupByLibrary.simpleMessage("Crie sua conta"),
        "create_post_button":
            MessageLookupByLibrary.simpleMessage("Criar post"),
        "create_post_error": MessageLookupByLibrary.simpleMessage(
            "Erro durante a criação do post"),
        "create_post_title":
            MessageLookupByLibrary.simpleMessage("Criar novo post"),
        "description": MessageLookupByLibrary.simpleMessage("Descrição"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "error_searching_items": m0,
        "field_warning":
            MessageLookupByLibrary.simpleMessage("Campo obrigatório"),
        "form_warning": MessageLookupByLibrary.simpleMessage(
            "Por favor, preencha todos os campos"),
        "homePageTitle": MessageLookupByLibrary.simpleMessage("Página Inicial"),
        "name": MessageLookupByLibrary.simpleMessage("Nome"),
        "nenhum_item_encontrado":
            MessageLookupByLibrary.simpleMessage("Nenhum item encontrado"),
        "password": MessageLookupByLibrary.simpleMessage("Senha"),
        "phone_number": MessageLookupByLibrary.simpleMessage("Celular"),
        "photos_url": MessageLookupByLibrary.simpleMessage("URL da foto"),
        "ra": MessageLookupByLibrary.simpleMessage("RA"),
        "searchPost": MessageLookupByLibrary.simpleMessage("Buscar Post"),
        "title": MessageLookupByLibrary.simpleMessage("Título"),
        "todos_os_itens_perdidos":
            MessageLookupByLibrary.simpleMessage("Todos os itens perdidos")
      };
}
