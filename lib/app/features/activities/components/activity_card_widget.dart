import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../core/core.dart';
import '../model/activity_card_item.dart';

class ActivityCardWidget extends StatelessWidget {
  final ActivityCardItem activityCardItem;

  const ActivityCardWidget({
    Key? key,
    required this.activityCardItem,
  }) : super(key: key);

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
              height: 36.0,
              width: 36.0,
              //! TODO, criar uma classe para as decorações
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
                image: DecorationImage(
                  image: AssetImage(activityCardItem.image),
                  scale: 1.2,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                activityCardItem.title,
                // TODO, criar também no Textstyle
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            // Spacer(),
            const Text(
              'Exercicios:', //! Criar como função
              style: TextStyle(
                color: AppColors.white,
                fontSize: 12.0,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              '${activityCardItem.quantity ?? 0}', //! Criar como função
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 12.0,
              ),
            ),
          ],
        ),

        // * Descrição
        Text(
          activityCardItem.subtitle,
          style: const TextStyle(
            color: AppColors.description,
          ),
          textAlign: TextAlign.left,
        ),

        Row(
          children: [
            Expanded(
              child: Row(
                children: const [
                  Icon(MdiIcons.github, size: 20.0),
                  SizedBox(width: 4.0),
                  Flexible(
                    child: Text(
                      'Acessar código fonte',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
