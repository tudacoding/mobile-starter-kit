import 'dart:math';

import 'package:collection/collection.dart';
import 'package:mobile_starter_kit/helpers/classes/image.dart';
import '../classes/index.dart';

class UsersProvider {
  static UsersProvider get shared => UsersProvider();

  List<User> get users => const [
        User(
          id: '1',
          name: 'Timur K.',
          image: UserImage(
            image: 'assets/images/users/woman.jpeg',
            sourceLink:
                'https://cdn.cardsrealm.com/images/uploads/1636374920.jpeg',
            sourceName: 'Daniel Monteiro',
          ),
          bio: 'Hello,',
        ),
      ];

  User? getUser(String id) {
    return users.firstWhereOrNull((user) => user.id == id);
  }

  User get randomUser => users[Random().nextInt(users.length)];
}
