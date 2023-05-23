import 'package:flutter/material.dart';
import 'package:flutter_animations_masterclass/screens/menu_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animations Masterclass',
      theme: ThemeData(
        navigationBarTheme: const NavigationBarThemeData(
          indicatorColor: Colors.amber,
        ),
        colorScheme: const ColorScheme.light(
          primary: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const MenuScreen(),
    );
  }
}
