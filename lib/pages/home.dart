import 'package:admin/AppComponet/colors.dart';
import 'package:admin/widget/Content.dart';
import 'package:admin/widget/interoPage.dart';
import 'package:admin/widget/navbar.dart';
import 'package:admin/widget/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Container(
                color: AppColors.blue,
                child: Column(
                  children: [
                    NavBar(),
                    InteroPage(),
                  ],
                )),
            View(),
            Content()
          ],
        ),
      )),
    );
  }
}
