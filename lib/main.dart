import 'package:flutter/material.dart';
import 'package:taller_1_computacion_movil/components/screens/first_design.dart';
import 'package:taller_1_computacion_movil/components/screens/second_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool firstScreen = true;

  void changeScreen() {
    firstScreen = !firstScreen;
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Israel Trujillo Dominguez',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Israel Trujillo Dominguez'),
        ),
        body: (firstScreen ? const FirstDesign() : const SecondDesign()),
        floatingActionButton: FloatingActionButton(
          onPressed: changeScreen,
          child: const Icon(Icons.replay_rounded),
        ),
      ),
    );
  }
}
