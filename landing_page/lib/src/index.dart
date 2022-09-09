import 'package:flutter/material.dart';
import 'Footer/index.dart';
import 'FrontPage/index.dart';
import 'Content/index.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _AppState();
}

class _AppState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: const [
          FrontPage(),
          ContentPage(),
          FooterPage(),
        ],
      )),
    );
  }
}
