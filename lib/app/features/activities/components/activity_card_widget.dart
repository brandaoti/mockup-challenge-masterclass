import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../core/core.dart';
import '../models/activity_card_item.dart';

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
            //! TODO, criar uma classe para as decorações
            Container(
              height: 36.0,
              width: 36.0,
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
              child: TextWidget(
                activityCardItem.title,
                style: AppStyles.titleTextStyle,
              ),
            ),
            // Spacer(),
            TextWidget(
              AppStrings.totalExercises(activityCardItem.totalExercises ?? 0),
              style: AppStyles.sourceCodeTextStyle,
            ),
          ],
        ),

        // * Descrição
        TextWidget(
          activityCardItem.description,
          style: AppStyles.descriptionTextStyle,
          // textAlign: TextAlign.left,
        ),

        Row(
          children: [
            Expanded(
              child: Row(
                children: const [
                  Icon(MdiIcons.github, size: 20.0),
                  SizedBox(width: 4.0),
                  Flexible(
                    child: TextWidget(
                      AppStrings.sourceCode,
                      style: AppStyles.sourceCodeTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: const TextWidget(
                AppStrings.showMore,
                style: AppStyles.showMoreTextStyle,
              ),
              style: AppStyles.showMoreButtonStyle,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
