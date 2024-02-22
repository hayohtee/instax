import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:user_repository/user_repository.dart';

part 'my_user_event.dart';
part 'my_user_state.dart';

class MyUserBloc extends Bloc<MyUserEvent, MyUserState> {
  final UserRepository _userRepository;

  MyUserBloc(UserRepository userRepository)
      : _userRepository = userRepository,
        super(const MyUserState.loading()) {
    on<GetMyUser>((event, emit) async {
      try {
        final user = await _userRepository.getMyUser(event.myUserId);
        emit(MyUserState.success(user));
      } catch (e) {
        debugPrint(e.toString());
        emit(const MyUserState.failure());
      }
    });
  }
}
