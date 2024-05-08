import 'package:eventify/widgets/buttons/button_primary.dart';
import 'package:eventify/widgets/buttons/buutton_secondary.dart';
import 'package:flutter/material.dart';

import '../../core/utils/screen_navigator.dart';
import '../../routes/app_routes.dart';

class AuthInit extends StatelessWidget {
  const AuthInit({super.key});

  static Widget builder(BuildContext context) {
    return const AuthInit();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 128),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xFFDFF7FF),
              Color(0xFF55CDF3),
            ],
            stops: [0.19, 0.46, 1.0], // Adjust stops for smooth blending
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 70,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: 'jost'),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "To Eventify",
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontFamily: 'jost',
                      decoration: TextDecoration.none),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonPrimary(
                  buttonText: "Login",
                  onTap: () {
                    NavigatorService.pushNamedAndRemoveUntil(
                        AppRoutes.loginScreen);
                  },
                ),
                ButtonSecondary(
                  buttonText: "Sign up",
                  onTap: () {
                    NavigatorService.pushNamedAndRemoveUntil(
                        AppRoutes.signupScreen);
                    print("worked");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
