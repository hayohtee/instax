import 'package:flutter/material.dart';

import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late final tabController = TabController(
    length: 2,
    vsync: this,
    initialIndex: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: kToolbarHeight),
                  TabBar(
                    unselectedLabelColor: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.5),
                    labelColor: Theme.of(context).colorScheme.onBackground,
                    controller: tabController,
                    tabs: const [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: const [
                        SignInScreen(),
                        SignUpScreen(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
