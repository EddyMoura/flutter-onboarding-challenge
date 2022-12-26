import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String searchUser = '''
    query getUserData(\$login: String!) {
      user(login: \$login) {
        avatarUrl
        name
        bio
      }
    }
   ''';

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

  Future<bool> _saveAndLoadData() async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString(nameKey, loginController.text);
    return _setData();
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
    return SizedBox(
      height: 500,
      child: Card(
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
                      onPressed: _saveAndLoadData, child: const Text('Search'))
                ],
              ),
              Query(
                options: QueryOptions(
                  document: gql(searchUser),
                  variables: {'login': _data},
                ),
                builder: (QueryResult result,
                    {VoidCallback? refetch, FetchMore? fetchMore}) {
                  if (result.hasException) {
                    return Text(result.exception.toString());
                  }

                  if (result.isLoading && result.data == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (result.data == null && !result.hasException) {
                    return const Text('Test 03');
                  }

                  final user = result.data?['user'];

                  return Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                const SizedBox(height: 30),
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      NetworkImage(user['avatarUrl'])
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  user['name'],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  user['bio'],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
