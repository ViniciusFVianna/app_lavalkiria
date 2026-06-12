import 'package:flutter/material.dart';

class BaseButton extends ElevatedButton {
  const BaseButton({
    super.key,
    required super.onPressed,
    required super.child,
    super.style,
  });
}