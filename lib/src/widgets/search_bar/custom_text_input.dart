import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFDAE2E4),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: "Name or Number",
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
