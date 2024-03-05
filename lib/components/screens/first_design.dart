import 'package:flutter/material.dart';

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
