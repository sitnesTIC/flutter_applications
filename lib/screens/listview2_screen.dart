import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['primer', 'segon', 'tercer', 'quart', 'cinque'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: Text(options[index]),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
