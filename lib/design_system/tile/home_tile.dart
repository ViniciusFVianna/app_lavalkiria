import 'package:app_lavalkiria/design_system/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

/// Componente de cartão de item exibido na tela inicial.
///
/// Exibe uma imagem circular ([imageUrl]), um título ([title]),
/// um subtítulo ([subtitle]), um preço ([price]) e executa o callback [onTap] ao ser clicado.
class HomeTile extends StatelessWidget {
  /// Título principal do item.
  final String title;

  /// Descrição ou subtítulo detalhando o item.
  final String subtitle;

  /// Texto indicando o preço ou valor do item.
  final String price;

  /// URL da imagem exibida no avatar circular.
  final String imageUrl;

  /// Callback executado quando o cartão é clicado.
  final VoidCallback onTap;

  /// Cria uma instância do [HomeTile].
  const HomeTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(width: 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  title,
                  softWrap: true,
                  style: const TextStyle(
                    color: AppColors.darkPrimaryDark,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    subtitle,
                    softWrap: true,
                    style: const TextStyle(
                      color: AppColors.darkPrimaryDark,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Text(
                  price,
                  softWrap: true,
                  style: const TextStyle(
                    color: AppColors.darkPrimaryDark,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
