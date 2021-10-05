import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/config/pallete.dart';
import 'package:twitter_clone/screens/homeScreen/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Palette.background),
      scaffoldBackgroundColor: Palette.background,
      primaryColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      fontFamily: GoogleFonts.roboto().fontFamily,
      textTheme: GoogleFonts.robotoTextTheme(),
    );
    return MaterialApp(
      title: 'Twitter',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(secondary: Palette.blue),
      ),
      home: HomeScreen(),
    );
  }
}
