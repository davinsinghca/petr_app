import 'package:date_time_format/date_time_format.dart';

int calculateDifference(DateTime date) {
  DateTime now = DateTime.now();
  return DateTime(date.year, date.month, date.day)
      .difference(DateTime(now.year, now.month, now.day))
      .inDays;
}

String getFormattedDate(DateTime dateTime) {
  int diff = calculateDifference(dateTime);

  switch (diff) {
    case -1:
      return 'Yesterday';
    case 0:
      return 'Today';
    case 1:
      return 'Tomorrow';
    default:
      return '${dateTime.month}/${dateTime.day}/${dateTime.year}';
  }
}
