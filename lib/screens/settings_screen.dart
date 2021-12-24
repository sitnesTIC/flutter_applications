import 'package:flutter/material.dart';

import 'package:flutter_applications/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkmode = false;
  int gender = 1;
  String name = 'Pep';
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
                value: isDarkmode,
                title: const Text('Darkmode'),
                onChanged: (value) {
                  isDarkmode = value;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: gender,
                title: const Text('Masculí'),
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: gender,
                title: const Text('Femení'),
                onChanged: (value) {
                  gender = value ?? 2;
                  setState(() {});
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Gerard',
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
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
