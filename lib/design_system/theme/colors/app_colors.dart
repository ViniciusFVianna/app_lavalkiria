import 'package:flutter/material.dart';

/// Paleta de cores centralizada do design system.
///
/// Define constantes de cores para temas claro e escuro utilizadas em toda a aplicação.
abstract class AppColors {
  /// Cor azul primária base.
  static const Color primaryBase = Color(0xFF0056D2);

  /// Tom escuro da cor primária.
  static const Color primaryDark = Color(0xFF003D96);

  /// Tom claro da cor primária.
  static const Color primaryLight = Color(0xFFE6EEFA);

  /// Cor branca pura.
  static const Color primaryWhite = Color(0xFFFFFFFF);

  /// Cor de fundo gelo/suave.
  static const Color primaryIce = Color(0xFFF8FAFC);

  /// Tom de cinza para bordas e divisores.
  static const Color primaryGray = Color(0xFFE2E8F0);

  /// Cor de fundo escuro para superfícies no modo escuro.
  static const Color darkPrimaryDark = Color(0xFF1E293B);

  /// Tom secundário no modo escuro.
  static const Color darkPrimaryBase = Color(0xFF64748B);

  /// Tom claro de destaque no modo escuro.
  static const Color darkPrimaryLight = Color(0xFF94A3B8);
}
