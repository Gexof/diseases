import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicare_health_app/providers/bottom_navigation_provider.dart';
import 'package:medicare_health_app/screens/home_screen.dart';
import 'package:medicare_health_app/screens/search_screen.dart';
import 'package:provider/provider.dart';

import 'screens/about_disease_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<BottomNavigationProvider>(
          create: (context) => BottomNavigationProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: SearchScreen(),
    );
  }
}
