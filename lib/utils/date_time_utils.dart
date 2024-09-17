class DateTimeUtils {
  static String formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  static DateTime parseDate(String dateString) {
    return DateTime.parse(dateString);
  }

  static DateTime addDays(DateTime date, int days) {
    return date.add(Duration(days: days));
  }

  static int daysBetween(DateTime from, DateTime to) {
    return to.difference(from).inDays;
  }
}