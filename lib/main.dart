import 'package:flutter/material.dart';

import 'features/feature_intro/presentation/screens/intro_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    ),
  );
}
