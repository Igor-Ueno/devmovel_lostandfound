import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/lost_item.dart';

class LostItemAdapter extends StatelessWidget {
  final List<LostItem> lostItems;

  LostItemAdapter({required this.lostItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lostItems.length,
      itemBuilder: (context, index) {
        final lostItem = lostItems[index];
        return ListTile(
          leading: CachedNetworkImage(
            imageUrl: lostItem.url,
            width: 160,
            height: 90,
            fit: BoxFit.cover,
          ),
          title: Text(
            lostItem.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(lostItem.contact, style: TextStyle(color: Colors.blue)),
              Text(
                lostItem.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }
}
