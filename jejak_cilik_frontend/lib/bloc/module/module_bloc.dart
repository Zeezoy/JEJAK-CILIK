import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/module/repository/module_repository.dart';
import 'module_event.dart';
import 'module_state.dart';

class ModuleBloc extends Bloc<ModuleEvent, ModuleState> {

  final ModuleRepository repository;

  ModuleBloc(this.repository) : super(ModuleState()) {

    on<LoadModules>((event, emit) async {

      emit(ModuleState(loading: true));

      final modules = await repository.getModules();

      emit(ModuleState(
        modules: modules,
        loading: false,
      ));

    });

  }

}