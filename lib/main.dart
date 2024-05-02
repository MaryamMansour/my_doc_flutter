import 'package:flutter/material.dart';
import 'package:my_doctor/core/di/dependency_injection.dart';
import 'package:my_doctor/core/routing/app_router.dart';
import 'package:my_doctor/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}



