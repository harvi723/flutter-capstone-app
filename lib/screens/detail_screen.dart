import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final item;

  DetailScreen(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text(item['title']),
      ),
    );
  }
}