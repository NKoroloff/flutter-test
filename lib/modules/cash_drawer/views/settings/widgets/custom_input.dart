import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter...',

        suffixIcon: InkWell(child: Icon(Icons.clear)),
        border: OutlineInputBorder(),
        fillColor: Color.fromARGB(255, 255, 255, 255),
        filled: true,
      ),
    );
  }
}
