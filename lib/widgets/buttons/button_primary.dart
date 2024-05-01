import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String buttonText;

  const ButtonPrimary({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
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
        onPressed: () {
          print("object");
        },
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
