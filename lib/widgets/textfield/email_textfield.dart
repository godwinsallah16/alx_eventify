import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String fieldLabel;
  final String? hintText; // Make hint message optional

  const CustomTextField({super.key, required this.fieldLabel, this.hintText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 21),
        Text(
          widget.fieldLabel,
          style: const TextStyle(fontSize: 21),
        ),
        const SizedBox(height: 2),
        SizedBox(
          width: 312,
          height: 45,
          child: TextField(
            style: const TextStyle(fontFamily: 'jost'),
            decoration: InputDecoration(
              fillColor: Colors.white, // Set the background color to white
              filled: true,
              hintText: widget
                  .hintText, // Use the provided hint text or null if not provided
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
              ),

              hintStyle: const TextStyle(
                color: Colors.black,
                fontFamily: 'jost',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
