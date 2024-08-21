
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class FadingNavigationTransition extends CustomTransitionPage {
  FadingNavigationTransition({required super.child, super.key})
    : super(
      transitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child,);
      },
    );
}