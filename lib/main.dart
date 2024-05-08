import 'package:eventify/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'core/network/network_info.dart';
import 'core/utils/screen_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final connectivityService = ConnectivityService();

    // Initialize the service
    connectivityService.initialize();

    Future.delayed(const Duration(seconds: 5), () {
      print('Is connected: ${connectivityService.isConnected}');
      print(
          'Has internet connection: ${connectivityService.hasInternetConnection}');
    });

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: NavigatorService.navigatorKey,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}
