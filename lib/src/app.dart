import 'package:flutter/material.dart';
import 'package:mobx_casestudy/src/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
