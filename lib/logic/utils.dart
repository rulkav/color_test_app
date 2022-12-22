import 'dart:math';

import 'package:flutter/material.dart';

/// This function generates new random color
Color generateRandomColor() {
  final Random random = Random();
  final int redColor = random.nextInt(255);
  final int greenColor = random.nextInt(255);
  final int blueColor = random.nextInt(255);
  const double opacity = 1;

  final Color newColor =
      Color.fromRGBO(redColor, greenColor, blueColor, opacity);

  return newColor;
}

/// Init color function
Color initColor() {
  const Color newColor = Color.fromRGBO(255, 255, 255, 1);

  return newColor;
}

/// Invert the color
Color invertColor(Color? color) {
  final Color newColor;
  if (color != null) {
    final redColor = 255 - color.red;
    final greenColor = 255 - color.green;
    final blueColor = 255 - color.blue;
    const double opacity = 1;

    newColor = Color.fromRGBO(redColor, greenColor, blueColor, opacity);
  } else {
    newColor = initColor();
  }

  return newColor;
}
