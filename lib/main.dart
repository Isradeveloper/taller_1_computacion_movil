import 'package:flutter/material.dart';

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
class FirstDesign extends StatelessWidget {
  const FirstDesign({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 140, 38, 183),
          height: MediaQuery.of(context).size.height / 3,
          child: const Center(
            child: Text(
              "1",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WhiteBox(
                text: "2",
              ),
              WhiteBox(
                text: "3",
              ),
              WhiteBox(
                text: "4",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class WhiteBox extends StatelessWidget {
  final String text;

  const WhiteBox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: const EdgeInsetsDirectional.only(top: 30),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


class SecondDesign extends StatelessWidget {
  const SecondDesign({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: const Stack(
          children: [
            PositionedBox(
              color: Colors.deepPurple,
              heigth: 200,
              text: "Hola 1",
              top: 140,
            ),
            PositionedBox(
              color: Colors.green,
              heigth: 180,
              text: "Hola 2",
              top: 50,
            ),
            PositionedBox(
              color: Colors.red,
              heigth: 130,
              text: "Hola 3",
              top: 0,
            ),
          ],
        ));
  }
}

class PositionedBox extends StatelessWidget {
  final double top;
  final Color color;
  final String text;
  final double heigth;

  const PositionedBox({
    super.key,
    required this.top,
    required this.color,
    required this.text,
    required this.heigth,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: heigth,
        decoration: BoxDecoration(
            color: color,
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(90))),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        )),
      ),
    );
  }
}
