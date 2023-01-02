import 'package:flutter/material.dart';
import 'package:flutter_onboarding_challenge/data/model/user_model.dart';
import 'package:flutter_onboarding_challenge/data/queries.dart';
import 'package:flutter_onboarding_challenge/presentation/detail_screen.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final loginController = TextEditingController();
  String _searchQuery = 'philipplackner';
  final int _nRepositories = 50;
  final queries = GitHubQueries();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: loginController,
                  decoration: const InputDecoration(
                    labelText: 'Enter your name',
                  ),
                ),
                TextButton(
                  // only enable the button if the text is not empty
                  onPressed: () {
                    setState(() {
                      _searchQuery = loginController.text;
                    });
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Query(
              options: QueryOptions(
                document: gql(queries.fetchUserWithRepository()),
                variables: {
                  'login': _searchQuery,
                  'nRepositories': _nRepositories,
                },
              ),
              builder: (QueryResult result,
                  {VoidCallback? refetch, FetchMore? fetchMore}) {
                if (result.hasException) {
                  return Text(
                    result.exception.toString(),
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  );
                }

                if (result.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                List? repositories =
                    result.data?['user']?['repositories']?['edges'];

                if (repositories == null) {
                  return const Center(child: Text('No repositories'));
                }

                User? user = User.fromJson(result.data?['user']);

                // final parsedData =
                //     Query$FetchUser.fromJson(result.data?['user']).user;
                //
                // final bio = parsedData?.bio;
                // final avatarUrl = parsedData?.avatarUrl;
                // final name = parsedData?.name;

                return Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              user.name,
                            ),
                            subtitle: Text(
                              user.bio,
                            ),
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
                    const SizedBox(height: 2),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 2, left: 10),
                      child: Text(
                        "Repositories",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      height: 600,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(12.0),
                        itemCount: repositories.length,
                        itemBuilder: (context, index) {
                          final repository = repositories[index];

                          return Card(
                              child: ListTile(
                                  title:
                                      Text(repository['node']?['name'] ?? '')));
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
