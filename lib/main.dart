import 'package:flutter/material.dart';
import 'package:solid_software_test_task/random_color_generator.dart';

void main() {
  runApp(const MainApp());
}

const _animationDuration = Duration(milliseconds: 500);
const double _fontSize = 40;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _MainScreen(),
    );
  }
}

class _MainScreen extends StatefulWidget {
  const _MainScreen();

  @override
  State<_MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<_MainScreen> {
  final colorGenerator = RandomColorGenerator();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(colorGenerator.generateColorParametrs);
      },
      child: Scaffold(
        body: AnimatedContainer(
          duration: _animationDuration,
          color: colorGenerator.color,
          child: Center(
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: _fontSize,
                color: colorGenerator.oppositeColor,
              ),
              duration: _animationDuration,
              child: const Text(
                'Hey there!',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
