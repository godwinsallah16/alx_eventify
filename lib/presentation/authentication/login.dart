import 'package:eventify/widgets/background/auth.dart';
import 'package:eventify/widgets/buttons/button_primary.dart';
import 'package:eventify/widgets/textfield/email_textfield.dart';
import 'package:eventify/widgets/textfield/psswordfeild.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF55CDF3),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.grey[400],
              flexibleSpace: const FlexibleSpaceBar(
                titlePadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                title: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: AuthBackground(),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 56, vertical: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const CustomTextField(fieldLabel: "Email"),
                    const SizedBox(height: 4),
                    const PasswordField(fieldLabel: "Password"),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            print("object");
                          },
                          child: const Text(
                            "Forget Password?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFFA20723),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    const Center(
                      child: ButtonPrimary(buttonText: "Login"),
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
                        "Continue  with",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          iconSize: 40,
                          onPressed: () {
                            print("object");
                          },
                          icon: Image.asset(
                            "assets/icons/Google_button.png",
                          ),
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () {
                            print("object");
                          },
                          icon: Image.asset(
                            "assets/icons/Github_button.png",
                          ),
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () {
                            print("object");
                          },
                          icon: Image.asset(
                            "assets/icons/Facebook_button.png",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
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
                            "Sign up",
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
      ),
    );
  }
}
