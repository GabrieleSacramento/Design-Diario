import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final String label;
  const CustomForm({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        validator: (text) {
          if (text == null || text.isEmpty) {
            return 'this field cant be null';
          }
          return null;
        },
        decoration: InputDecoration(
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(217, 217, 217, 1),
            ),
          ),
          labelText: label,
          labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(83, 78, 78, 0.5)),
        ),
      ),
    );
  }
}
