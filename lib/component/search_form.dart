import 'package:flutter/material.dart';

// Define a custom Form widget.
class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _SearchFormState extends State<SearchForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final loginController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: loginController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your login',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      print(loginController.text);
                    },
                    child: const Text('Press to load'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
