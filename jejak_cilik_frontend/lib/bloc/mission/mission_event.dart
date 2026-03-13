abstract class MissionEvent {}

class LoadMissions extends MissionEvent {

  final String submoduleId;

  LoadMissions(this.submoduleId);

}