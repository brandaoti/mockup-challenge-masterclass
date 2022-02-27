class ActivityCardItem {
  final String image;
  final String title;
  final String subtitle;
  final int? quantity;

  ActivityCardItem({
    required this.image,
    required this.title,
    required this.subtitle,
    this.quantity,
  });
}
