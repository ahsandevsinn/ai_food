import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

pushScreen(BuildContext context, Widget screen) {
  return Navigator.push(
      context, CupertinoPageRoute(builder: (context) => screen));
}

pop(BuildContext context, Widget screen) {
  return Navigator.pop(context);
}
