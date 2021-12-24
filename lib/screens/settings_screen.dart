import 'package:flutter/material.dart';

import 'package:flutter_applications/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'Settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}
