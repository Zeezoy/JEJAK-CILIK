import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileRepository {
  final supabase = Supabase.instance.client;

  Future<Map<String,dynamic>?> getProfile() async {
    
    final user = supabase.auth.currentUser;

    final data = await supabase
    .from('profiles')
    .select()
    .eq('id', user!.id)
    .single();
    
    return data;

  }

  Future<void> updateProfile({
    required String name,
    required String email,
    required String birth,
    required String gender,
  }) async {

    final user = supabase.auth.currentUser;

    await supabase.from('profiles').upsert({

      "id": user!.id,
      "name": name,
      "birth_date": birth,
      "gender": gender
    });
  }

}