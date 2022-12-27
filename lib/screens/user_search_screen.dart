import 'package:flutter/material.dart';
import 'package:flutter_onboarding_challenge/data/queries.dart' as queries;
import 'package:flutter_onboarding_challenge/model/user.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'detail_user_screen.dart';

class UserSearchPage extends StatefulWidget {
  const UserSearchPage({Key? key}) : super(key: key);

  @override
  State<UserSearchPage> createState() => _UserSearchPageState();
}

class _UserSearchPageState extends State<UserSearchPage> {
  final loginController = TextEditingController();
  String _searchQuery = 'philipplackner';

  @override
  void dispose() {
    loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: loginController,
              decoration: const InputDecoration(
                labelText: 'Enter a search term',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  _searchQuery = loginController.text;
                });
              },
              child: Text(
                'Search',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          Query(
            options: QueryOptions(
              document: gql(queries.searchUser),
              variables: {
                'login': _searchQuery,
              },
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

              User user = User.fromJson(result.data?['user']);

              return SizedBox(
                child: Card(
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text(
                          user.name,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(user.bio),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user.avatarUrl),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailUserScreen(user: user)),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
