import 'package:flutter/material.dart';

import 'contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ContactScreen.routeName,
      routes: {
        ContactScreen.routeName: (context) => const ContactScreen(),
      },
    );
  }
}
