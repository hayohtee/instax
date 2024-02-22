part of 'sign_in_bloc.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object?> get props => [];
}

final class SignInInitial extends SignInState {
  const SignInInitial();
}

final class SignInSuccess extends SignInState {}

final class SignInFailure extends SignInState {
  const SignInFailure(this.message);

  final String? message;

  @override
  List<Object?> get props => [message];
}

final class SignInProcess extends SignInState {}
