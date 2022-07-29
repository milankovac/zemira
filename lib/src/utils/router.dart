import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

routerFade(context, page) {
  Navigator.push(
      context, PageTransition(type: PageTransitionType.fade, child: page));
}
