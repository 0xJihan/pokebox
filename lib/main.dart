import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokebox/domain/utils/colors.dart';
import 'package:pokebox/screens/home_screen.dart';

void main(){
  runApp(const PokeBoxApp());
}


class PokeBoxApp extends StatelessWidget {
  const PokeBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "PokeBox",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      home: HomeScreen(),
    );
  }
}
