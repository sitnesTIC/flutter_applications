import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['primer', 'segon', 'tercer', 'quart', 'cinque'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (ordre) => ListTile(
                  title: Text(ordre),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
