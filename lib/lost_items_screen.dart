import 'package:flutter/material.dart';
import '../services/posts_service.dart';
import '../models/lost_item.dart';
import '../widgets/lost_item_adapter.dart';

class LostItemsScreen extends StatefulWidget {
  @override
  _LostItemsScreenState createState() => _LostItemsScreenState();
}

class _LostItemsScreenState extends State<LostItemsScreen> {
  late Future<List<LostItem>> futureLostItems;

  @override
  void initState() {
    super.initState();
    futureLostItems = PostsService().getLostItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All posts'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder<List<LostItem>>(
        future: futureLostItems,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Nenhum item encontrado'));
          } else {
            return LostItemAdapter(lostItems: snapshot.data!);
          }
        },
      ),
    );
  }
}
