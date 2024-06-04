import 'package:contact_app_assignment/screens/contact_list_screen.dart';
import 'package:contact_app_assignment/ui/app_theme/dark_theme.dart';
import 'package:contact_app_assignment/ui/app_theme/light_mode.dart';
import 'package:flutter/material.dart';

class MyContactApp extends StatefulWidget {
  const MyContactApp({super.key});

  @override
  State<MyContactApp> createState() => _MyContactAppState();
}

class _MyContactAppState extends State<MyContactApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const ContactListScreen(),
    );
  }
}
