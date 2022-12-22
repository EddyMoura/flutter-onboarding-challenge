import 'package:flutter/material.dart';
import 'components/search_form.dart';

void main() => runApp(const OnboardingApp());

class OnboardingApp extends StatelessWidget {
  const OnboardingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(home: MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Onboarding App"),
      ),
      body: const SearchForm(),
    );
  }
}
