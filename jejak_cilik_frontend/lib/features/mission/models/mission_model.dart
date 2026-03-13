class MissionModel {

  final String id;
  final String submoduleId;
  final String question;
  final String answer;
  
  MissionModel({
    required this.id,
    required this.submoduleId,
    required this.question,
    required this.answer,

  });

  factory MissionModel.fromJson(Map<String,dynamic> json){

    return MissionModel(
      id: json["id"].toString(), 
      submoduleId: json["submoduleId"].toString(), 
      question: json["question"] ?? "", 
      answer: json["answer"] ?? "", 
    );
  }
}