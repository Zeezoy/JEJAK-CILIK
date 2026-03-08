import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/module_repository.dart';
import '../models/submodule_model.dart';

final moduleRepositoryProvider = Provider<ModuleRepository>((ref) {
  return ModuleRepository();
});

final submodulesProvider = FutureProvider<List<SubmoduleModel>>((ref) async {

  final repo = ref.read(moduleRepositoryProvider);

  return repo.getSubmodules();

});