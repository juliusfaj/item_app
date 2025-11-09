class ListItem {
  final String id;
  String text;
  String category;

  ListItem({
    required this.id,
    required this.text,
    required this.category,
  });

  Map<dynamic, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'category': category,
    };
  }

  factory ListItem.fromJson(Map<dynamic, dynamic> json) {
    return ListItem(
      id: json['id'],
      text: json['text'],
      category: json['category'],
    );
  }
}