class SubmoduleModel {

  final String id;
  final String title;
  final int orderNumber;
  final bool completed;

  SubmoduleModel({
    required this.id,
    required this.title,
    required this.orderNumber,
    required this.completed,
  });

  factory SubmoduleModel.fromJson(Map<String, dynamic> json) {
    return SubmoduleModel(
      id: json["id"],
      title: json["title"],
      orderNumber: json["order_number"],
      completed: json["completed"] ?? false,
    );
  }
}