import 'package:flutter/material.dart';
import '../model/user.dart';

class DetailUserScreen extends StatelessWidget {
  const DetailUserScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail User'),
      ),
      body: Column(
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
          ),
        ],
      ),
    );
  }
}
