import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/mission/repository/mission_repository.dart';
import 'mission_event.dart';
import 'mission_state.dart';

class MissionBloc extends Bloc<MissionEvent, MissionState> {

  final MissionRepository repository;

  MissionBloc(this.repository) : super(MissionState()) {

    on<LoadMissions>((event, emit) async {

      emit(MissionState(loading: true));

      final missions = await repository.getMissions(
        event.submoduleId,
      );

      emit(MissionState(
        missions: missions,
        loading: false,
      ));

    });

  }
}