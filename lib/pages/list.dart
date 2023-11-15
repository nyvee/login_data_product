import 'package:flutter/material.dart';
import '../components/listfield.dart';

class ListPage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'name': 'Bando 1', 'price': '1.000'},
    {'name': 'Bando 08', 'price': '2.000'},
    {'name': 'Bando 100', 'price': '3.000'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListField(
              itemName: items[index]['name']!,
              itemPrice: items[index]['price']!,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
