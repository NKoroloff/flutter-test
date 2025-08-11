import 'package:flutter/material.dart';

class SettingsNumberInput extends StatelessWidget {
  const SettingsNumberInput({
    required this.onDecrement,
    required this.onIncrement,
    required this.value,
    super.key,
  });
  final int value;
  final void Function() onIncrement;
  final void Function() onDecrement;

  @override
  Widget build(BuildContext context) {
    Widget _buildIconButton(Color color, IconData icon, VoidCallback onPressed) {
      return SizedBox(
        height: 30,
        width: 30,
        child: IconButton.filled(
          onPressed: onPressed,
          style: ButtonStyle(backgroundColor: WidgetStateColor.fromMap({WidgetState.any: color})),
          icon: Icon(icon, size: 15),
        ),
      );
    }

    return Row(
      children: [
        Text(value.toString()),
        Spacer(),
        _buildIconButton(Colors.red, Icons.remove, onDecrement),
        SizedBox(width: 10),
        _buildIconButton(Colors.green, Icons.add, onIncrement),
        SizedBox(width: 20),
      ],
    );
  }
}
