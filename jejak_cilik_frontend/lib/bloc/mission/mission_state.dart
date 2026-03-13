import '../../features/mission/models/mission_model.dart';

class MissionState {

  final bool loading;
  final List<MissionModel> missions;

  MissionState({
    this.loading = false,
    this.missions = const [],
  });

}