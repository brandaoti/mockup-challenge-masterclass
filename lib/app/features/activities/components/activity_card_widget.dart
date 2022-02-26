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
              height: 43.0,
              width: 43.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
                image: DecorationImage(
                  image: AssetImage(activityCardItem.image),
                ),
              ),
            ),
            Text(
              activityCardItem.title,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16.0,
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

        // fim
        Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(MdiIcons.github, size: 20.0),
                SizedBox(width: 4.0),
                Text(
                  'Acessar código fonte',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.white,
                  ),
                ),
              ],
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
