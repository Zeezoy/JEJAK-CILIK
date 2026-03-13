import 'package:supabase_flutter/supabase_flutter.dart';

class RewardRepository {
  
  final supabase = Supabase.instance.client;

  Future<List<Map<String,dynamic>>> getRewards() async {

    final data = await supabase
      .from("rewards")
      .select();

      return List<Map<String,dynamic>>.from(data);
  }
}