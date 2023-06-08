import 'package:admin/AppComponet/colors.dart';
import 'package:admin/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Method',
      theme: ThemeData(
        fontFamily: "DMSans",
      ),
      home: Home(),
    );
  }
}
