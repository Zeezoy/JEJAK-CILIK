import '../../features/module/models/module_model.dart';

class ModuleState {

  final List<ModuleModel> modules;
  final bool loading;

  ModuleState({
    this.modules = const [],
    this.loading = false,
  });

}