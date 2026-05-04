import 'package:flutter/material.dart';

class ItemModel {
  final String title;
  final String desc;
  final String image;

  ItemModel({
    required this.title,
    required this.desc,
    required this.image,
  });
}

class ListItem extends StatelessWidget {
  final ItemModel item;

  const ListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(item.image),
          ),
          SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  item.desc,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),

          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}