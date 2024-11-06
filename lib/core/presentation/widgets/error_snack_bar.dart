import 'package:flutter/material.dart';

class ErrorSnackBar extends SnackBar {
  final String errorMessage;

  ErrorSnackBar({
    super.key,
    required this.errorMessage,
  }) : super(
          backgroundColor: Colors.red,
          content: Text(
            errorMessage,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          showCloseIcon: true,
        );
}
