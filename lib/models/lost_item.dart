class LostItem {
  final String title;
  final String description;
  final String contact;
  final String url;

  LostItem({
    required this.title,
    required this.description,
    required this.contact,
    required this.url,
  });

  factory LostItem.fromJson(Map<String, dynamic> json) {
    return LostItem(
      title: json['title'],
      description: json['description'],
      contact: json['contact'],
      url: json['url'],
    );
  }
}
