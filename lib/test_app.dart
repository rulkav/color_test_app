import 'package:color_test_app/presentation/screen.dart';
import 'package:flutter/material.dart';

///
class TestApp extends StatelessWidget {
  ///
  const TestApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
