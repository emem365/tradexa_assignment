import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tradexa_assignment/views/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Tradexa Assignment',
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF17082A),
          colorScheme: const ColorScheme(
            primary: Color(0xFF17082A),
            primaryVariant: Color(0xFF210F37),
            secondary: Color(0xFFF79E44),
            secondaryVariant: Color(0xFF815325),
            surface: Color(0xFF210F37),
            background: Color(0xFF17082A),
            error: Color(0xFFB00020),
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.white70,
            onBackground: Colors.white,
            onError: Colors.white,
            brightness: Brightness.dark,
          ),
        ),
        home: const Home(),
      ),
    );
  }
}