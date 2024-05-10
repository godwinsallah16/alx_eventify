import 'package:eventify/presentation/authentication/auth_init.dart';
import 'package:eventify/presentation/authentication/login.dart';
import 'package:eventify/presentation/authentication/singup.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String signupScreen = '/signup';

  static const String loginScreen = '/login';

  static const String authInitScreen = '/auth_init';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signupScreen: SignUpScreen.builder,
        loginScreen: LoginScreen.builder,
        authInitScreen: AuthInit.builder,
        initialRoute: AuthInit.builder
      };
}
