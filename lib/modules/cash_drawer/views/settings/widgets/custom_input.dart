import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomInput extends StatefulWidget {
  final void Function(String) onChanged;
  final String value;
  final String? label;
  const CustomInput({required this.value, required this.onChanged, this.label, super.key});

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late final TextEditingController _controller;

  String currentValue = '';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleClear() {
    _controller.clear();
    widget.onChanged('');
    setState(() {
      currentValue = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: TextFormField(
        controller: _controller,
        onChanged: (value) {
          widget.onChanged(value);
          setState(() {
            currentValue = value;
          });
        },
        decoration: InputDecoration(
          label: widget.label != null ? Text(widget.label!.tr) : null,
          contentPadding: const EdgeInsets.all(10),
          hintText: 'Enter...',
          suffixIcon: currentValue.isNotEmpty
              ? IconButton(icon: const Icon(Icons.clear), onPressed: _handleClear, iconSize: 20)
              : null,
          border: InputBorder.none,
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
        ),
      ),
    );
  }
}
