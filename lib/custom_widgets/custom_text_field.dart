import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final Widget icon;
  final TextEditingController textEditingController;

  const CustomTextField(
      {super.key,
      required this.text,
      required this.icon,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Container(
      width: mediaQuery.width,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          hintText: text,
          hintStyle: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
