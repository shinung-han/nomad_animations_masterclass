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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              width: size.width * 0.8,
              height: size.width * 0.8,
              transform: Matrix4.rotationZ(_visible ? 1 : 0),
              transformAlignment: Alignment.center,
              decoration: BoxDecoration(
                color: _visible ? Colors.red : Colors.amber,
                borderRadius: BorderRadius.circular(_visible ? 100 : 0),
              ),
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
