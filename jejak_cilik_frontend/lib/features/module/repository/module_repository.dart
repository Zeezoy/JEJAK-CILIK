import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/module_model.dart';

class ModuleRepository {

  final supabase = Supabase.instance.client;

  Future<List<ModuleModel>> getModules() async {

    final data = await supabase
      .from("modules")
      .select();

    return data 
      .map((e) => ModuleModel.fromJSon(e))
      .toList();
  }
}