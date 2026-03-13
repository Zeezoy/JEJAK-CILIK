import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/mission_repository.dart';

final missionProvider = FutureProvider.family((ref, String submoduleId) async {

  final repo = MissionRepository();

  return repo.getMissions(submoduleId);
});