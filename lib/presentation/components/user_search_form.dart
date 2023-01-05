import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding_challenge/blocs/user_search_bloc.dart';
import 'package:flutter_onboarding_challenge/blocs/user_search_event.dart';
import 'package:flutter_onboarding_challenge/blocs/user_search_state.dart';
import 'package:flutter_onboarding_challenge/presentation/detail_screen.dart';

import '../../data/model/user_model.dart';

class UserSearchForm extends StatefulWidget {
  const UserSearchForm({Key? key}) : super(key: key);

  @override
  State<UserSearchForm> createState() => _UserSearchFormState();
}

class _UserSearchFormState extends State<UserSearchForm> {
  final UserSearchBloc _userSearchBloc = UserSearchBloc();
  final _loginController = TextEditingController();

  @override
  void initState() {
    _userSearchBloc.add(const PressButtonSearchEvent(text: ''));
    super.initState();
  }

  @override
  void dispose() {
    _userSearchBloc.close();
    _loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  key: const Key('searchTextField'),
                  controller: _loginController,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: const Icon(Icons.clear),
                        onTap: () {
                          _loginController.text = '';
                          _userSearchBloc
                              .add(const PressButtonSearchEvent(text: ''));
                        },
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter a search login'),
                ),
                TextButton(
                  key: const Key('searchButton'),
                  onPressed: () {
                    _userSearchBloc.add(
                      PressButtonSearchEvent(text: _loginController.text),
                    );
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: BlocProvider(
              create: (_) => _userSearchBloc,
              child: BlocBuilder<UserSearchBloc, UserSearchState>(
                builder: (context, state) {
                  if (state is SearchLoadingState) {
                    return const Center(
                        key: Key('progressIndicator'),
                        child: CircularProgressIndicator());
                  } else if (state is SearchLoadedState) {
                    return _buildCard(context, state.user);
                  } else if (state is SearchErrorState) {
                    return Center(child: Text(state.message));
                  }
                  return const Text('Please enter a login to begin');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, User user) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              user.name ?? '',
            ),
            subtitle: Text(
              user.bio ?? '',
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.avatarUrl!),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailUserScreen(user: user),
                ),
              );
            },
          ),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 2, left: 10),
            child: Text(
              "Repositories:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(),
          _buildRepositoriesList(context, user),
        ],
      ),
    );
  }

  Widget _buildRepositoriesList(BuildContext context, User user) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: user.repositories?.edges?.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(user.repositories?.edges?[index]?.node?.name ?? ''),
            ),
          );
        },
      ),
    );
  }
}
