
import 'package:flutter/material.dart';
import 'page/home.dart';
import 'page/about_me.dart';
import 'page/resume.dart';
import 'page/skills.dart';
import 'page/project.dart';
import 'page/navi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mein Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/resume': (context) => ResumePage(),
        '/skills': (context) => SkillsPage(),
        '/projects': (context) => ProjectsPage(),
      },
    );
  }
}
