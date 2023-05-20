import 'package:flutter/material.dart';
import 'package:flutter_animations_masterclass/screens/apple_watch_screen.dart';
import 'package:flutter_animations_masterclass/screens/explicit_animations_screen.dart';
import 'package:flutter_animations_masterclass/screens/implicit_animations_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  void _goToPage(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () =>
                  _goToPage(context, const ImplicitAnimationsSCreen()),
              child: const Text('Implicit Animations'),
            ),
            ElevatedButton(
              onPressed: () =>
                  _goToPage(context, const ExplicitAnimationsScreen()),
              child: const Text('Explicit Animations'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, const AppleWatchScreen()),
              child: const Text('Apple Watch'),
            ),
          ],
        ),
      ),
    );
  }
}
