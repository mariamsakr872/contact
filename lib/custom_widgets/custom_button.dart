import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  Function onClick;

  CustomButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: FilledButton(
          onPressed: () {
            onClick();
          },
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 55, vertical: 10)),
            backgroundColor: MaterialStatePropertyAll(
              color,
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
