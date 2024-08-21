import 'package:flutter/material.dart';
import 'package:impeller_test/router.dart';

void main() {
  runApp(const ImpellerTestApp());
}

class ImpellerTestApp extends StatelessWidget {
  const ImpellerTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}
