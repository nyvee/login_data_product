import 'package:flutter/material.dart';

class ListField extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final int index;

  const ListField({
    required this.itemName,
    required this.itemPrice,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                (index + 1).toString(),
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          title: Text(
            itemName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Harga: Rp. $itemPrice',
                  style: const TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        const Divider(
          height: 2,
          thickness: 2,
        ),
      ],
    );
  }
}
