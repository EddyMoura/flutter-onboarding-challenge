import 'package:flutter/material.dart';

import '../../data/model/user_model.dart';

class DetailUserScreen extends StatelessWidget {
  final User user;

  const DetailUserScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail User',
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              user.name ?? '',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(user.bio ?? ''),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.avatarUrl ?? ''),
            ),
          ),
        ],
      ),
    );
  }
}
