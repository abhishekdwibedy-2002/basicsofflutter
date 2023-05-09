import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 45, 14, 120), Color.fromARGB(255, 0, 110, 255)),
      ),
    ),
  );
}
