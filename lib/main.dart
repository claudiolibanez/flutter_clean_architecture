import 'package:cleanarchitecture/src/app_widget.dart';
import 'package:cleanarchitecture/src/core/injection/container_injection.dart';
import 'package:flutter/material.dart';

void main() {
  ContainerInjection.setup();

  runApp(
    const AppWidget(),
  );
}
