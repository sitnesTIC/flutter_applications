import 'package:flutter/material.dart';

import 'package:flutter_applications/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('isDarkmode: '),
            Divider(),
            Text('Gènere: '),
            Divider(),
            Text('Nom usuari: '),
            Divider(),
          ],
        ));
  }
}
