import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/mission_model.dart';

class MissionRepository {

  final supabase = Supabase.instance.client;

  Future<List<MissionModel>> getMissions(String submoduleId) async {

    final data = await supabase
      .from("mission")
      .select()
      .eq("submodule_id", submoduleId);

      return data 
        .map<MissionModel>((e) => MissionModel.fromJson(e)).toList();

  }
}