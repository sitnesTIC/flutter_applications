import 'package:flutter/material.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                  autofocus: true,
                  initialValue: '',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print('Valor: $value');
                  },
                  validator: (value) {
                    if (value == null) return 'Camp obligatori';
                    return value.length < 3 ? 'Mínim de 3 lletres' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      hintText: 'Nom de l\'usuari',
                      labelText: 'Nom',
                      helperText: 'Només lletres',
                      suffixIcon: Icon(Icons.group_outlined),
                      icon: Icon(Icons.add_moderator_outlined),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ))))
            ],
          ),
        ),
      ),
    );
  }
}
