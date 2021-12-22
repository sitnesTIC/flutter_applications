import 'package:flutter/material.dart';

import 'package:flutter_applications/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                labelText: 'Nom',
                hintText: 'Nom de l\'usuari',
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Cognom',
                hintText: 'Cognom de l\'usuari',
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Correu-e',
                hintText: 'santeloi@santeloi.com',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Contrasenya',
                hintText: 'Clau de pas',
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
