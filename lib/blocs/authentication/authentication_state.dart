part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown }

final class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  factory AuthenticationState.unknown() {
    return const AuthenticationState._();
  }

  factory AuthenticationState.authenticated(User user) {
    return AuthenticationState._(
      user: user,
      status: AuthenticationStatus.authenticated,
    );
  }

  factory AuthenticationState.unauthenticated() {
    return const AuthenticationState._(
      status: AuthenticationStatus.unauthenticated,
    );
  }

  final User? user;
  final AuthenticationStatus status;

  @override
  List<Object?> get props => [user, status];
}
