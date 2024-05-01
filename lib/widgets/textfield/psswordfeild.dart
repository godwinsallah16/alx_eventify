import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String fieldLabel;
  final String? hintText; // Make hint message optional

  const PasswordField({Key? key, required this.fieldLabel, this.hintText})
      : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true; // Initially password is hidden

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
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              TextField(
                obscureText: _obscureText,
                style: const TextStyle(fontFamily: 'jost'),
                decoration: InputDecoration(
                  fillColor: Colors.white, // Set the background color to white
                  filled: true,
                  hintText: widget
                      .hintText, // Use the provided hint text or null if not provided
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'jost',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText; // Toggle password visibility
                  });
                },
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
