import '../../../core/services/supabase_service.dart';
import '../models/submodule_model.dart';

class ModuleRepository {

  final supabase = SupabaseService.client;

  Future<List<SubmoduleModel>> getSubmodules() async {

    final response = await supabase
        .from("submodules")
        .select()
        .order("order_number");

    return (response as List)
        .map((e) => SubmoduleModel.fromJson(e))
        .toList();
  }

}