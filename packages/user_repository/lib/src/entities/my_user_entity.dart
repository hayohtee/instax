import 'package:user_repository/user_repository.dart';

import '../models/models.dart';

class MyUserEntity extends MyUser {
  const MyUserEntity({
    required super.id,
    required super.email,
    required super.name,
    required super.picture,
  });

  Map<String, Object?> toDocument() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'picture': picture,
    };
  }

  factory MyUserEntity.fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      id: doc['id'] as String,
      email: doc['email'] as String,
      name: doc['name'] as String,
      picture: doc['picture'] as String?,
    );
  }

  @override
  bool? get stringify => true;
}
