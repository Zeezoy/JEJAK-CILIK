class SubmoduleModel {

  final String id;
  final String moduleId;
  final String title;
  final int orderNumber;

  SubmoduleModel({
    required this.id,
    required this.moduleId,
    required this.title,
    required this.orderNumber,
  });

  factory SubmoduleModel.fromJson(Map<String, dynamic> json) {

    return SubmoduleModel(
      id: json['id'],
      moduleId: json['module_id'],
      title: json['title'],
      orderNumber: json['order_number'],
    );

  }

}