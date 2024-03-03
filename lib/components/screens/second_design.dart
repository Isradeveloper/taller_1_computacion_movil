import 'package:flutter/material.dart';

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
              heigth: 240,
              text: "Hola 1",
              top: 210,
            ),
            PositionedBox(
              color: Colors.green,
              heigth: 210,
              text: "Hola 2",
              top: 100,
            ),
            PositionedBox(
              color: Colors.red,
              heigth: 180,
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
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
        )),
      ),
    );
  }
}
