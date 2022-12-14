import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/classes/user.dart';
import 'package:mobile_starter_kit/providers/users.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final UsersProvider usersProvider = UsersProvider();
    final User user = usersProvider.randomUser;
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(user.image.sourceLink),
        backgroundColor: Colors.transparent,
      ),
      title: Text(
        user.bio,
        maxLines: 2,
        style: const TextStyle(color: Colors.white),
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        user.name,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      trailing: IconButton(
        color: Colors.white,
        onPressed: () {},
        icon: const Icon(Icons.notifications_none_outlined),
      ),
    );
  }
}
