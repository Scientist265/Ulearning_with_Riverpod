import 'package:flutter/material.dart';

void pushNamed(context, String routeName) {
  Navigator.of(context).pushNamed(routeName);
}

void push(context, {required Widget widget}) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

