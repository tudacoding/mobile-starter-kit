import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/classes/user.dart';
import 'package:mobile_starter_kit/plugins/theme.dart';
import 'package:mobile_starter_kit/providers/users.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final AppTheme theme = AppTheme.of(context);
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
        onPressed: theme.switchTheme,
        icon: const Icon(Icons.dark_mode),
      ),
    );
  }
}
