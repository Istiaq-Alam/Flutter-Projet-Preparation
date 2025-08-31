import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Calculator Display area
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 100),
                child: const Text(
                  "Enter Number",
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
              const SizedBox(height: 20),

              // Row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcText("7"),
                  calcText("8"),
                  calcText("9"),
                  calcText("/"),
                ],
              ),
              const SizedBox(height: 15),

              // Row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcText("4"),
                  calcText("5"),
                  calcText("6"),
                  calcText("x"),
                ],
              ),
              const SizedBox(height: 15),

              // Row 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcText("1"),
                  calcText("2"),
                  calcText("3"),
                  calcText("-"),
                ],
              ),
              const SizedBox(height: 15),

              // Row 4
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcText("0"),
                  calcText("."),
                  calcText("="),
                  calcText("+"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable method for calculator text
  Widget calcText(String text) {
    return Container(
      height: 70,
      width: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}
