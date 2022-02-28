import '../../../core/core.dart';
import '../models/activity_card_item.dart';

class ActivityCardService {
  final List<ActivityCardItem> _activityCardItem = [
    ActivityCardItem(
      image: AppImages.iconDarkRunning,
      title: AppStrings.activityCardTitle[0],
      description: AppStrings.activityCardDescription[0],
    ),
    ActivityCardItem(
      image: AppImages.iconDarkGlasses,
      title: AppStrings.activityCardTitle[1],
      description: AppStrings.activityCardDescription[1],
    ),
    ActivityCardItem(
      image: AppImages.iconDarkToys,
      title: AppStrings.activityCardTitle[2],
      description: AppStrings.activityCardDescription[2],
    ),
  ];

  List<ActivityCardItem> get getActivityItem => _activityCardItem;
}
