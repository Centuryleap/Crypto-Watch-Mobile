import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final String name;
  const ToggleButton({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(vertical: 4),
      alignment: Alignment.center,
      child: Text(
        name,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
