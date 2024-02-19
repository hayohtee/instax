import 'package:equatable/equatable.dart';

class MyUser extends Equatable {
  const MyUser({
    required this.id,
    required this.email,
    required this.name,
    required this.picture,
  });

  final String id;
  final String email;
  final String name;
  final String? picture;

  bool get isEmpty => this == MyUser.empty;
  bool get isNotEmpty => this != MyUser.empty;

  static const empty = MyUser(
    id: '',
    email: '',
    name: '',
    picture: '',
  );

  @override
  List<Object?> get props => [id, email, name, picture];

  MyUser copyWith({
    String? id,
    String? email,
    String? name,
    String? picture,
  }) {
    return MyUser(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      picture: picture ?? this.picture,
    );
  }

  @override
  bool? get stringify => true;
}
