class AppFunc {
  static String getTime() {
    final cHour = DateTime.now().hour;
    if (cHour >= 0 && cHour < 12)
      return 'Morning';
    else if (cHour >= 12 && cHour < 16)
      return 'Afternoon';
    else
      return 'Evening';
  }
}
