class ActivityCardItem {
  final String image;
  final String title;
  final String description;
  final int? totalExercises;

  ActivityCardItem({
    required this.image,
    required this.title,
    required this.description,
    this.totalExercises,
  });
}
