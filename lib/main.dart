import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicare_health_app/controllers/articles_controller.dart';
import 'package:medicare_health_app/controllers/bottom_navigation_controller.dart';
import 'package:medicare_health_app/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<BottomNavigationController>(
          create: (context) => BottomNavigationController()),
      ChangeNotifierProvider<ArticlesController>(
          create: (context) => ArticlesController()),
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
      home: const BottomNavBar(),
    );
  }
}
