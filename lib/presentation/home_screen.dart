import 'package:flutter/material.dart';
import 'package:flutter_onboarding_challenge/presentation/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget content = SearchScreen();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search GitHub User",
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: content,
    );
  }
}
