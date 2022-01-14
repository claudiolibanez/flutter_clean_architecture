import 'package:cleanarchitecture/src/features/auth/presenters/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;

  const LoginPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await controller
                .doLogin(
              email: "email@email.com",
              password: "123456",
            )
                .catchError(
              (err) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      err.message,
                    ),
                  ),
                );
              },
            ).then(
              (value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Logando com sucesso",
                    ),
                  ),
                );
              },
            );
          },
          child: const Text("logar"),
        ),
      ),
    );
  }
}
