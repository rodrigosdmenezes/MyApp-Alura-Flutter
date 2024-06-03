import 'package:app_flutter_alura/screens/formScreen.dart';
import 'package:app_flutter_alura/screens/initialScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 3, 58, 240)),
        useMaterial3: true,
      ),
      home: const FormScrenn(),
    );
  }
}
