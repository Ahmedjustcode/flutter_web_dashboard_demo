import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/widgets/app_text_field.dart';
import 'package:flutter_web_example/features/auth/presentation/forms/sign_up_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  static const String route = '/Login';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpForm()
    );
  }
}
