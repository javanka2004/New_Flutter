import 'package:flutter/material.dart';
import 'package:lab2_test/MainScreen//Widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key} );

  @override
  Widget build(BuildContext context) {
    return const TabBarMainScreen();
  }
}

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.white,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => const MainScreen()
  }
)
);