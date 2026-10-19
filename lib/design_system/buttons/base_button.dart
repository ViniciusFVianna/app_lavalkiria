import 'package:flutter/material.dart';

/// Um botão base personalizado do design system que estende o [ElevatedButton].
///
/// O [BaseButton] é a base para a criação dos botões da aplicação,
/// permitindo definir a ação de clique, o conteúdo visual e estilos personalizados.
///
/// Exemplo de uso:
/// ```dart
/// BaseButton(
///   onPressed: () {
///     // Ação do botão
///   },
///   child: const Text('Confirmar'),
/// )
/// ```
class BaseButton extends ElevatedButton {
  /// Cria uma instância do [BaseButton].
  ///
  /// * [onPressed]: Função chamada quando o botão é pressionado. Se for `null`, o botão fica desabilitado.
  /// * [child]: O widget filho exibido dentro do botão (geralmente um [Text] ou [Icon]).
  /// * [style]: Estilo visual do botão ([ButtonStyle]).
  const BaseButton({
    super.key,
    required super.onPressed,
    required super.child,
    super.style,
  });
}