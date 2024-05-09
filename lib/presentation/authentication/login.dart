import 'package:eventify/core/utils/screen_navigator.dart';
import 'package:eventify/routes/app_routes.dart';
import 'package:eventify/widgets/background/auth.dart';
import 'package:eventify/widgets/buttons/button_primary.dart';
import 'package:eventify/widgets/textfield/email_textfield.dart';
import 'package:eventify/widgets/textfield/psswordfeild.dart';
import 'package:flutter/material.dart';

import '../../core/utils/image_constants.dart';
import '../../widgets/buttons/icon_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Widget builder(BuildContext context) {
    return const LoginScreen();
  }

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
              automaticallyImplyLeading: false,
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
                    Center(
                      child: ButtonPrimary(
                        buttonText: "Login",
                        onTap: () {
                          NavigatorService.pushNamedAndRemoveUntil(
                              AppRoutes.signupScreen);
                        },
                      ),
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
                        CustomIconButton(
                          onTap: () {
                            print("D");
                          },
                          child: ImageConstant.googleIcon,
                        ),
                        CustomIconButton(
                          onTap: () {
                            print("D");
                          },
                          child: ImageConstant.githubIcon,
                        ),
                        CustomIconButton(
                          onTap: () {
                            print("D");
                          },
                          child: ImageConstant.facebookIcon,
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
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            NavigatorService.popAndPushNamed(
                                AppRoutes.signupScreen);
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              color: Color(0xFF000C4E),
                              fontSize: 16,
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
