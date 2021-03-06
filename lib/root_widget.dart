import 'package:flutter/material.dart';
import 'package:fseg_sousse/services/localStorage/local_storage.dart';
import 'package:fseg_sousse/views/auth/sign_in_view.dart';
import 'package:fseg_sousse/views/home/home_screen.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userId = LocalStorage.getUserId;
    return userId != null ? const HomeView() : const SignInScreen();
  }
}
