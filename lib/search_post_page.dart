import 'package:flutter/material.dart';
import 'generated/l10n.dart'; // Importa a classe gerada para localização
import '../services/posts_service.dart'; 
import '../models/lost_item.dart';
import '../widgets/lost_item_adapter.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<LostItem> lostItems = [];
  bool isLoading = false;
  TextEditingController searchController = TextEditingController();

  // Função para buscar itens perdidos com base na consulta de busca
  void searchLostItems(String query) async {
    setState(() {
      isLoading = true; // Mostra o indicador de carregamento
    });

    try {
      final response = await PostsService().searchLostItems(query);
      setState(() {
        lostItems = response;
        isLoading = false; // Oculta o indicador de carregamento após a resposta
      });
    } catch (e) {
      setState(() {
        isLoading = false; // Oculta o indicador de carregamento em caso de erro
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(S.of(context).error_searching_items(e.toString()))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).buscar_itens_perdidos),
      ),
      body: Column(
        children: [
          // Campo de texto para pesquisa
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: S.of(context).buscar_itens,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  searchLostItems(value); // Chama a função de busca quando o texto muda
                }
              },
            ),
          ),
          // Indicador de carregamento ou lista de resultados
          isLoading
              ? const Center(child: CircularProgressIndicator()) // Mostra o indicador enquanto carrega
              : Expanded(
                  // Lista de itens perdidos encontrados
                  child: LostItemAdapter(lostItems: lostItems),
                ),
        ],
      ),
    );
  }
}
