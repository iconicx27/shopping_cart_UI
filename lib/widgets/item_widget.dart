import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          // ignore: avoid_print
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.3,
          style:
              const TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
