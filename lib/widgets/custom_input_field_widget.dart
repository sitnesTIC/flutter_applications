import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: (value) => formValues[formProperty] = value,
        validator: (value) {
          if (value == null) return 'Camp obligatori';
          return value.length < 3 ? 'Mínim de 3 lletres' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          // prefixIcon: Icon(Icons.group_outlined),
          icon: icon == null ? null : Icon(icon),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        ));
  }
}
