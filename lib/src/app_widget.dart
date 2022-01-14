import 'package:flutter/material.dart';

import 'package:cleanarchitecture/src/core/injection/container_injection.dart';
import 'package:cleanarchitecture/src/features/auth/presenters/controllers/login_controller.dart';
import 'package:cleanarchitecture/src/features/auth/presenters/pages/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(
        controller: i.get<LoginController>(),
      ),
    );
  }
}
