import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

abstract class AppTheme {
  // Configuração para o Tema Claro
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryBase,
        primaryContainer: AppColors.primaryLight,
        secondary: AppColors.primaryDark,

        // Fundo do app e superfícies de cards/menus
        surface: AppColors.primaryWhite,
        surfaceTint: AppColors.primaryIce,

        // Cores de texto e elementos sobrepostos
        onPrimary: AppColors.primaryWhite,
        onSurface: AppColors.primaryBase, // Texto principal em azul escuro
      ),

      // Customização de componentes globais para combinar com o design
      scaffoldBackgroundColor: AppColors.primaryIce, // Fundo padrão das telas
      dividerColor: AppColors.primaryGray, // Bordas e divisores lineares
    );
  }

  // Configuração para o Tema Escuro
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.darkPrimaryLight, // Tons mais claros ganham destaque no escuro
        primaryContainer: AppColors.darkPrimaryDark,
        secondary: AppColors.darkPrimaryBase,

        surface: AppColors.darkPrimaryDark,
        onPrimary: AppColors.primaryWhite,
        onSurface: AppColors.primaryWhite,
      ),
      scaffoldBackgroundColor: const Color(0xFF0F172A), // Um fundo escuro condizente
    );
  }
}