import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instax/blocs/authentication/authentication_bloc.dart';
import 'package:instax/blocs/sign_in/sign_in_bloc.dart';
import 'package:instax/blocs/sign_up/sign_up_bloc.dart';
import 'package:user_repository/user_repository.dart';

import 'app_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({required this.userRepository, super.key});

  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthenticationBloc(userRepository)),
        BlocProvider(create: (_) => SignInBloc(userRepository)),
        BlocProvider(create: (_) => SignUpBloc(userRepository)),
      ],
      child: const MyAppView(),
    );
  }
}
