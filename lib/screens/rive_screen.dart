import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveScreen extends StatefulWidget {
  const RiveScreen({super.key});

  @override
  State<RiveScreen> createState() => _RiveScreenState();
}

class _RiveScreenState extends State<RiveScreen> {
  late final StateMachineController _stateMachineController;

  void _onInit(Artboard artboard) {
    _stateMachineController = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
    )!;
    artboard.addController(_stateMachineController);
  }

  void _togglePanel() {
    final input = _stateMachineController.findInput<bool>("panelActive")!;

    input.change(!input.value);
  }

  @override
  void dispose() {
    _stateMachineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: RiveAnimation.asset(
                'assets/animations/old-man-animation.riv',
                artboard: "Dwarf Panel",
                stateMachines: const ['State Machine 1'],
                onInit: _onInit,
              ),
            ),
            ElevatedButton(
              onPressed: _togglePanel,
              child: const Text('Go!'),
            ),
          ],
        ),
      ),
    );
  }
}
