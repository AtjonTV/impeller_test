
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SlidingNavigationTransition extends CustomTransitionPage {
  SlidingNavigationTransition({required super.child, super.key})
    : super(
      transitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(1,0),
              end: Offset.zero
            ).chain(
              CurveTween(
                curve: Curves.easeInOut,
              )
            )
          ),
          child: child,
        );
      },
    );
}