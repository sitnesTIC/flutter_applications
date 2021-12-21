import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['mario', 'sonic', 'pac-man', 'donkey kong'];
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
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.indigo,
            ),
            onTap: () {
              final joc = options[index];
              print(joc);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
