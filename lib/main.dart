import 'package:flutter/material.dart';
import 'package:flutter_onboarding_challenge/presentation/home_screen.dart';

void main() async {
  runApp(const GitHubSearchApp());
}

class GitHubSearchApp extends StatelessWidget {
  const GitHubSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GitHub App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: theme,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black87),
          toolbarTextStyle: TextStyle(),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
