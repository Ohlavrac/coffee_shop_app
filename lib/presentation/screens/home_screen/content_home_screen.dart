import 'package:flutter/material.dart';

class ContentHomeScreen extends StatelessWidget {
  const ContentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Text("Coffee"),
              ),
              GestureDetector(
                child: Text("Non Coffee"),
              ),
              GestureDetector(
                child: Text("Pastry Coffee"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}