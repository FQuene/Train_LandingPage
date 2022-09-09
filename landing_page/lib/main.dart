import 'package:landing_page/src/index.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
      initialRoute: '/application',
      routes: {"/application": ((context) => const Application())},
    ));
