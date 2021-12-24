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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          controller: null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ajustaments',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              const Divider(),
              SwitchListTile.adaptive(
                value: true,
                title: const Text('Darkmode'),
                onChanged: (value) {},
              ),
              const Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: 1,
                title: const Text('Masculí'),
                onChanged: (value) {},
              ),
              const Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: 1,
                title: const Text('Femení'),
                onChanged: (value) {},
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Gerard',
                  decoration: const InputDecoration(
                      labelText: 'Nom', helperText: 'Nom de l\'usuari'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
