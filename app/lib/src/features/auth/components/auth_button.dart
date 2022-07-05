import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../auth_controller.dart';

class AuthButtom extends StatelessWidget {
  const AuthButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AuthController>();

    return ElevatedButton(
      onPressed: controller.state == AuthState.loading
          ? null
          : () {
              controller.loginAction();
            },
      child: const Text('Login'),
    );
  }
}
