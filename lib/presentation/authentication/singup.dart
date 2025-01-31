import 'package:eventify/widgets/buttons/buutton_secondary.dart';
import 'package:eventify/widgets/textfield/email_textfield.dart';
import 'package:eventify/widgets/textfield/psswordfeild.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF55CDF3),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.grey[400],
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.symmetric(horizontal: 20.0),
              title: const Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Color(0xFFDFF7FF),
                      Color(0xFF55CDF3),
                    ],
                    stops: [0.4, 0.6, 1.0],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  const CustomTextField(fieldLabel: "First Name"),
                  const SizedBox(height: 4),
                  const CustomTextField(fieldLabel: "Last Name"),
                  const SizedBox(height: 4),
                  const CustomTextField(fieldLabel: "Email"),
                  const SizedBox(height: 4),
                  const PasswordField(fieldLabel: "Password"),
                  const SizedBox(height: 4),
                  const PasswordField(fieldLabel: "Confirm Password"),
                  const SizedBox(height: 32),
                  const Center(
                    child: ButtonSecondary(buttonText: "Sign up"),
                  ),
                  const SizedBox(height: 32),
                  const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'or',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              fontFamily: 'jost',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      "Sign up with",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        iconSize: 24,
                        onPressed: () {
                          print("object");
                        },
                        icon: Image.asset(
                          "assets/icons/Google_button.png",
                        ),
                      ),
                      IconButton(
                        iconSize: 24,
                        onPressed: () {
                          print("object");
                        },
                        icon: Image.asset(
                          "assets/icons/Github_button.png",
                        ),
                      ),
                      IconButton(
                        iconSize: 24,
                        onPressed: () {
                          print("object");
                        },
                        icon: Image.asset(
                          "assets/icons/Facebook_button.png",
                        ),
                      ),
                      // Add more IconButton widgets as needed
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("dfs");
                        },
                        child: const Text(
                          "Login here",
                          style: TextStyle(
                            color: Color(0xFF000C4E),
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
