import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notification"),
              Switch(value: true, onChanged: (value) {})
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            color: Colors.red.withOpacity(0.2),
          ),
          SizedBox(
            height: 10,
          ),
          Slider(value: 0.4, onChanged: (value) {})
        ],
      ),
    );
  }
}
