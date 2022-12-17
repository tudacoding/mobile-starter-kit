import 'package:mobile_starter_kit/helpers/classes/image.dart';

class User {
  const User({
    required this.id,
    required this.name,
    required this.image,
    required this.bio,
  });

  final String id;
  final String name;
  final UserImage image;
  final String bio;
}
