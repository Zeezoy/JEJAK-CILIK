import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/submodule_model.dart';

class SubmoduleRepository {

  final supabase = Supabase.instance.client;

  Future<List<SubmoduleModel>> getSubmodules(String moduleId) async {

    final data = await supabase
        .from("submodules")
        .select()
        .eq("module_id", moduleId)
        .order("order_number");

    return (data as List)
        .map((e) => SubmoduleModel.fromJson(e))
        .toList();
  }
}