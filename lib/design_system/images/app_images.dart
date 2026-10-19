import 'package:flutter_svg/svg.dart';

/// Classe base abstrata para renderização de imagens SVG do design system.
///
/// Permite instanciar imagens SVG como widgets invocáveis.
abstract class AppImages {
  /// O caminho do recurso (asset) SVG no projeto.
  final String path;

  /// Constrói uma instância de [AppImages] com o [path] do asset especificado.
  AppImages(this.path);

  /// Retorna um [SvgPicture] a partir do [path] informado.
  ///
  /// Permite que a classe seja chamada como uma função (ex: `Logo()()`).
  SvgPicture call() => SvgPicture.asset(path);
}
