import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_starter_kit/helpers/classes/user.dart';
import 'package:mobile_starter_kit/plugins/theme.dart';
import 'package:mobile_starter_kit/helpers/providers/users.dart';

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
      leading: GestureDetector(
        onTap: () => GoRouter.of(context).go('/detail'),
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(user.image.sourceLink),
          backgroundColor: Colors.transparent,
        ),
      ),
      title: Text(
        user.bio,
        maxLines: 2,
        style: TextStyle(color: Theme.of(context).primaryColorDark),
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        user.name,
        style: TextStyle(
            color: Theme.of(context).primaryColorDark,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      trailing: IconButton(
        color: Theme.of(context).primaryColorDark,
        onPressed: theme.switchTheme,
        icon: const Icon(Icons.dark_mode),
      ),
    );
  }
}
