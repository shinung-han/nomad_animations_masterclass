import 'package:flutter/material.dart';

class ImplicitAnimationsSCreen extends StatefulWidget {
  const ImplicitAnimationsSCreen({super.key});

  @override
  State<ImplicitAnimationsSCreen> createState() =>
      _ImplicitAnimationsSCreenState();
}

class _ImplicitAnimationsSCreenState extends State<ImplicitAnimationsSCreen> {
  bool _visible = true;

  void _goTrigger() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: ColorTween(
                begin: Colors.yellow,
                end: Colors.red,
              ),
              curve: Curves.elasticOut,
              duration: const Duration(seconds: 5),
              builder: (context, value, child) {
                return Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/4/4f/Dash%2C_the_mascot_of_the_Dart_programming_language.png',
                  color: value,
                  colorBlendMode: BlendMode.colorBurn,
                );
              },
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: _goTrigger,
              child: const Text('Go!'),
            ),
          ],
        ),
      ),
    );
  }
}
