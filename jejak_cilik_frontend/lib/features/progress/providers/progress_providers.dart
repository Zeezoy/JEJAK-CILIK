import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final progressProvider = FutureProvider((ref) async {

  final supabase = Supabase.instance.client;
  final user = supabase.auth.currentUser;

  final data = await supabase
      .from("progress")
      .select()
      .eq("user_id", user!.id);

  return data;

});