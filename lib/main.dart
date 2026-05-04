import 'package:flutter/material.dart';
import 'list_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<ItemModel> data = List.generate(
    10,
    (index) => ItemModel(
      title: "Item ${index + 1}",
      desc: "Deskripsi item ke-${index + 1}",
      image: "https://i.pravatar.cc/150?img=${index + 1}",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListItem(item: data[index]);
        },
      ),
    );
  }
}