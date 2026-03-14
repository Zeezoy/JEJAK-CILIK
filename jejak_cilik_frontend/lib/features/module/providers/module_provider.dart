import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final modulesProvider = FutureProvider((ref) async {

  final supabase = Supabase.instance.client;

  final data = await supabase
      .from("modules")
      .select();

  return data;

});