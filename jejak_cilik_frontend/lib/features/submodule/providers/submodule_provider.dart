import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/submodule_repository.dart';

final submoduleProvide = FutureProvider.family((ref,String moduleId){
  final repo = SubmoduleRepository();

  return repo.getSubmodules(moduleId);
});