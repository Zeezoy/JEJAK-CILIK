import 'package:supabase_flutter/supabase_flutter.dart';

class ProgressRepository {

  final supabase = Supabase.instance.client;

  Future<void> completeSubmodule(String submoduleId) async {
    final user = supabase.auth.currentUser;

    await supabase.from("progress").insert({

      "user_id": user!.id,
      "submodule_id": submoduleId,
      "completed": true,
      "completed_at": DateTime.now().toIso8601String()
    });
  }
}