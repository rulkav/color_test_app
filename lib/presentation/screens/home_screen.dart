import 'package:color_test_app/logic/utils.dart';
import 'package:flutter/material.dart';

/// Application Home screen
class HomeScreen extends StatefulWidget {
  /// Home screen constructor
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Duration _duration = const Duration(milliseconds: 300);

  Color? backgroundColor;
  Color? textColor;

  @override
  void initState() {
    backgroundColor = initColor();
    textColor = invertColor(backgroundColor);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            backgroundColor = generateRandomColor();
            textColor = invertColor(backgroundColor);
          });
        },
        child: AnimatedContainer(
          duration: _duration,
          color: backgroundColor,
          child: Center(
            child: Text(
              'Hey there',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
