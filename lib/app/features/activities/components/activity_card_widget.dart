import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ActivityCardWidget extends StatelessWidget {
  const ActivityCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ! Icon, titule e quantidade exercicio
        Row(
          children: [
            Container(
              height: 43.0,
              width: 43.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
                image: DecorationImage(
                  image: AssetImage(AppImages.iconDarkRunning),
                ),
              ),
            ),
          ],
        ),

        // * Descrição
        const Text(
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos.',
          style: TextStyle(
            color: AppColors.description,
          ),
          textAlign: TextAlign.left,
        ),

        // fim
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: const Text(
                'Ver mais',
                style: TextStyle(fontSize: 12.0, color: AppColors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23.0),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
