import 'package:eventify/core/utils/image_constants.dart';
import 'package:eventify/widgets/background/auth.dart';
import 'package:eventify/widgets/buttons/button_secondary.dart';
import 'package:eventify/widgets/buttons/icon_button.dart';
import 'package:eventify/widgets/textfield/email_textfield.dart';
import 'package:eventify/widgets/textfield/psswordfeild.dart';
import 'package:flutter/material.dart';

import '../../core/utils/screen_navigator.dart';
import '../../routes/app_routes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static Widget builder(BuildContext context) {
    return const SignUpScreen();
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
                titlePadding: EdgeInsets.symmetric(horizontal: 20.0),
                title: Text(
                  'Sign up',
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
                    Center(
                      child: ButtonSecondary(
                        onTap: () {
                          NavigatorService.popAndPushNamed(
                              AppRoutes.loginScreen);
                        },
                        buttonText: "Sign up",
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
                        CustomIconButton(
                          onTap: () {
                            NavigatorService.popAndPushNamed(
                                AppRoutes.loginScreen);
                          },
                          child: ImageConstant.googleIcon,
                        ),
                        CustomIconButton(
                          onTap: () {
                            NavigatorService.popAndPushNamed(
                                AppRoutes.loginScreen);
                          },
                          child: ImageConstant.githubIcon,
                        ),
                        CustomIconButton(
                          onTap: () {
                            NavigatorService.popAndPushNamed(
                                AppRoutes.loginScreen);
                          },
                          child: ImageConstant.facebookIcon,
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
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            NavigatorService.popAndPushNamed(
                                AppRoutes.loginScreen);
                          },
                          child: const Text(
                            "Login here",
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
