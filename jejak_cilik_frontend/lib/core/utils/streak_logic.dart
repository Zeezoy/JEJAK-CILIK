class StreakLogic {

  static int calculateStreak(
    DateTime lastActivity,
    int currentStreak,
  ) {

    final today = DateTime.now();

    final difference = 
      today.difference(lastActivity).inDays;

    if(difference == 1){
      return currentStreak + 1;
    }

    if(difference > 1){
      return 1;
    }

    return currentStreak;
  }
}