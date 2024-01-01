import 'package:flutter/material.dart';
import 'package:unipiaget/ui_widgets/menu/menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          primaryIconTheme: const IconThemeData(color: Colors.black54),
          primaryTextTheme: const TextTheme(titleMedium: TextStyle(color: Colors.black54,)),
          // ignore: deprecated_member_use
          textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.black54)), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(background: Colors.white)
      ),
      home: MenuWidgets(),
    );
  }
}
