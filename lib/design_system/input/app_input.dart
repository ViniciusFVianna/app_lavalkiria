import 'package:app_lavalkiria/design_system/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Campo de entrada de texto padronizado do design system.
///
/// Exibe um rótulo ([label]), o campo de formulário com instrução ([hint]) e
/// suporta validação, estado de erro e formatação de texto.
///
/// Exemplo de uso:
/// ```dart
/// AppInput(
///   label: 'E-mail',
///   hint: 'digite seu e-mail',
///   controller: emailController,
///   validator: (value) => value == null || value.isEmpty ? 'Campo obrigatório' : null,
/// )
/// ```
class AppInput extends StatelessWidget {
  /// O rótulo exibido acima do campo de texto.
  final String label;

  /// O texto de dica (placeholder) exibido dentro do campo quando vazio.
  final String hint;

  /// Indica se o texto deve ser ocultado (ex: senhas). O valor padrão é `false`.
  final bool? obscureText;

  /// Indica se o campo está em estado de erro visual. O valor padrão é `false`.
  final bool hasError;

  /// Mensagem de erro exibida abaixo do campo quando [hasError] for `true`.
  final String? errorText;

  /// Função de validação do conteúdo do campo para formulários.
  final String? Function(String?)? validator;

  /// Controlador para manipular o texto do campo.
  final TextEditingController? controller;

  /// O tipo de teclado a ser exibido (ex: e-mail, número, texto).
  final TextInputType? keyboardType;

  /// A ação do teclado (ex: próximo, concluir, enviar).
  final TextInputAction? textInputAction;

  /// Callback acionado sempre que o valor do campo é alterado.
  final Function(String)? onChanged;

  /// Lista de formatadores aplicados ao texto digitado (ex: máscaras).
  final List<TextInputFormatter>? inputFormatters;

  /// Cria uma instância do [AppInput].
  const AppInput({
    super.key,
    required this.label,
    required this.hint,
    this.validator,
    this.controller,
    this.obscureText = false,
    this.hasError = false,
    this.errorText,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          color: AppColors.primaryIce,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
      const SizedBox(height: 8),
      Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          color: AppColors.primaryWhite,
        ),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText!,
          validator: validator,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: AppColors.darkPrimaryBase,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            filled: false,
            fillColor: AppColors.primaryIce,
            alignLabelWithHint: true,
            border: InputBorder.none,
          ),
        ),
      ),
      const SizedBox(height: 8),
      if (hasError)
        Container(
          width: MediaQuery.sizeOf(context).width,
          alignment: Alignment.centerRight,
          child: Text(errorText!, style: const TextStyle(color: Colors.red)),
        ),
    ],
  );
}
