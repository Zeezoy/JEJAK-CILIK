class ModuleModel {
  final String id;
  final String title;
  final String image;
  final String price;

  ModuleModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });

  factory ModuleModel.fromJSon(Map<String,dynamic> json){

    return ModuleModel(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      price: json["price"],
    );
  }
}