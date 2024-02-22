part of 'my_user_bloc.dart';

enum MyUserStatus { success, loading, failure }

class MyUserState extends Equatable {
  const MyUserState._({
    this.status = MyUserStatus.loading,
    this.user,
  });

  const MyUserState.loading() : this._();
  const MyUserState.success(MyUser user)
      : this._(user: user, status: MyUserStatus.success);
  const MyUserState.failure() : this._(status: MyUserStatus.failure);

  final MyUserStatus status;
  final MyUser? user;

  @override
  List<Object?> get props => [status, user];
}
