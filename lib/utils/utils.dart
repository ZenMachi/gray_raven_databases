import 'package:flutter/material.dart';



showSnackbar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    content: Text(msg),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}