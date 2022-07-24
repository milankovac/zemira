import 'package:flutter/material.dart';

errorSneckBar(context, message) {
  var snackBar = SnackBar(
    content: Text(
      message,
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    margin: const EdgeInsets.all(50),
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
