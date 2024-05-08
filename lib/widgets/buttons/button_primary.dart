import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  const ButtonPrimary(
      {super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 48,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFF1578EC)),
          shape: MaterialStateProperty.all(
            const ContinuousRectangleBorder(
              side: BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: Color(0xFF1578EC),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          elevation: MaterialStateProperty.all(5), // Add elevation for shadow
          shadowColor: MaterialStateProperty.all(Colors.black), // Shadow color
        ),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontFamily: 'jost',
            fontSize: 21,
            color: Color(0xFFD9D9D9),
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
