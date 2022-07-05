import 'package:flutter/material.dart';

import 'features/auth/auth_page.dart';
import 'features/home/home_page.dart';
import 'features/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashPage(),
        '/auth': (_) => const AuthPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
