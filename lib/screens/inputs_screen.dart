import 'package:flutter/material.dart';

import 'package:flutter_applications/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Gerard',
      'last_name': 'Sentis',
      'email': 'sitnes@andirra.ad',
      'password': '123456',
      'rol': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Nom',
                  hintText: 'Nom de l\'usuari',
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Cognom',
                  hintText: 'Cognom de l\'usuari',
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Correu-e',
                  hintText: 'santeloi@santeloi.com',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Contrasenya',
                  hintText: 'Clau de pas',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulari no vàlid');
                      return;
                    }
                    //* imprimir valores
                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
