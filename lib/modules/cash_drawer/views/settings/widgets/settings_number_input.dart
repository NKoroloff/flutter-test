import 'package:flutter/material.dart';

class SettingsNumberInput extends StatelessWidget {
  const SettingsNumberInput({
    required this.onSubtruct,
    required this.onAdd,
    required this.value,
    super.key,
  });
  final double value;
  final void Function() onAdd;
  final void Function() onSubtruct;

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
        _buildIconButton(Colors.red, Icons.remove, onSubtruct),
        SizedBox(width: 10),
        _buildIconButton(Colors.green, Icons.add, onAdd),
        SizedBox(width: 20),
      ],
    );
  }
}
