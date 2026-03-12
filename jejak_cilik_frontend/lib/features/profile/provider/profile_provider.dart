import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/profile_repository.dart';

final profileProvider =
NotifierProvider<ProfileNotifier, Map<String, dynamic>?>(

  ProfileNotifier.new,

);

class ProfileNotifier extends Notifier<Map<String, dynamic>?> {

  final repo = ProfileRepository();

  @override
  Map<String, dynamic>? build() {
    loadProfile();
    return null;
  }

  Future<void> loadProfile() async {

    final data = await repo.getProfile();

    state = data;

  }

  Future<void> update({

    required String name,
    required String email,
    required String birth,
    required String gender,

  }) async {

    await repo.updateProfile(
      name: name,
      email: email,
      birth: birth,
      gender: gender,
    );

    await loadProfile();

  }

}