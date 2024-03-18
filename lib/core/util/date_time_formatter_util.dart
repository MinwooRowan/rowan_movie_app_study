class DateTimeFormatterUtil {
  static String formatDateYYYYMMDD(DateTime dateTime) {
    return '${dateTime.year}${dateTime.month.toString().padLeft(2, '0')}${dateTime.day.toString().padLeft(2, '0')}';
  }

  static String formatDateWithKorean(DateTime dateTime) {
    return '${dateTime.year}년 ${dateTime.month}월 ${dateTime.day}일';
  }
}
