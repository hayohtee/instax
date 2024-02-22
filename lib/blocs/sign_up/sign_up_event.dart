part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object?> get props => [];
}

class SignUpRequired extends SignUpEvent {
  const SignUpRequired({required this.user, required this.password});

  final MyUser user;
  final String password;

  @override
  List<Object?> get props => [user, password];
}
