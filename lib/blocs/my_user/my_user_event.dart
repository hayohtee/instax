part of 'my_user_bloc.dart';

@immutable
abstract class MyUserEvent extends Equatable {
  const MyUserEvent();

  @override
  List<Object?> get props => [];
}

class GetMyUser extends MyUserEvent {
  const GetMyUser(this.myUserId);

  final String myUserId;

  @override
  List<Object?> get props => [myUserId];
}
