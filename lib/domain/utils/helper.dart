import 'dart:math';
import 'package:flutter/material.dart';

Color getRandomLightColor() {
  final Random random = Random();
  return Color.fromARGB(
    255,                     // full opacity
    150 + random.nextInt(80), // R: 200–255
    150 + random.nextInt(80), // G: 200–255
    150 + random.nextInt(80), // B: 200–255
  );
}


Gradient generateSingleColorGradient() {
  final Random random = Random();

  // Pick a random base color
  final baseColor = Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );

  // Create darker & lighter variations
  Color dark = HSLColor.fromColor(baseColor)
      .withLightness(0.35)     // deep shade
      .toColor();

  Color light = HSLColor.fromColor(baseColor)
      .withLightness(0.80)     // soft shade
      .toColor();

  return  LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [dark, light],
  );
}



Gradient generatePremiumGradient() {
  final Random random = Random();


  final double hue = random.nextDouble() * 360;

  final HSLColor baseHsl = HSLColor.fromAHSL(
    1.0,        // full opacity
    hue,
    0.5,        // saturation (moderate)
    0.5,        // lightness (middle)
  );

  // Deep color (darker)
  final Color deep = baseHsl.withLightness(0.35).toColor();

  // Light color (lighter)
  final Color light = baseHsl.withLightness(0.80).toColor();

  // Optional: slight alpha fade for more depth
  final Color deepWithAlpha = deep.withOpacity(0.95);
  final Color lightWithAlpha = light.withOpacity(0.9);

  return LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [deepWithAlpha, lightWithAlpha],
  );
}
