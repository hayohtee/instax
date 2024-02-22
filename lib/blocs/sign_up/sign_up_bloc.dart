import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final UserRepository _userRepository;

  SignUpBloc(UserRepository userRepository)
      : _userRepository = userRepository,
        super(const SignUpInitial()) {
    on<SignUpRequired>((event, emit) async {
      emit(const SignUpProcess());
      try {
        final user = await _userRepository.signUp(event.user, event.password);
        await _userRepository.setUserData(user);
        emit(const SignUpSuccess());
      } catch (e) {
        log(e.toString());
        emit(const SignUpFailure());
      }
    });
  }
}
