import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Define a custom Form widget.
class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final loginController = TextEditingController();
  String _data = "";
  final String nameKey = "_key_name";

  @override
  void initState() {
    super.initState();
    _setData();
  }

  Future<bool> _saveData() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setString(nameKey, loginController.text);
  }

  Future<String?> _readData() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey);
  }

  _setData() {
    _readData().then((value) {
      setState(() {
        _data = value!;
      });
    });
  }

  @override
  void dispose() {
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
                    onPressed: _saveData,
                    child: const Text('Save login'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _data,
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: _setData,
                    child: const Text('Load login'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
