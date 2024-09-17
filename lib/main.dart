import 'dart:io';

import 'package:utils/utils/collection_utils.dart';
import 'package:utils/utils/date_time_utils.dart';
import 'package:utils/utils/files_utils.dart';
import 'package:utils/utils/string_utils.dart';


void main() async {
  List<Map<String, dynamic>> entries = [];

  while (true) {
    print('\nEnter a string (or "quit" to exit):');
    String input = stdin.readLineSync() ?? '';
    if (input.toLowerCase() == 'quit') break;

    String manipulated = StringUtils.reverse(input);
    int length = StringUtils.length(input);

    Map<String, dynamic> entry = {
      'original': input,
      'manipulated': manipulated,
      'length': length,
      'timestamp': DateTimeUtils.formatDate(DateTime.now()),
    };

    entries.add(entry);

    print('Reversed: $manipulated');
    print('Length: $length');
  }

  // Demonstrate collections
  CollectionsDemo.demonstrateList();
  CollectionsDemo.demonstrateSet();
  CollectionsDemo.demonstrateMap();

  // Save entries to file
  String content = entries.map((e) => e.toString()).join('\n');
  await FileUtils.writeFile('entries.txt', content);

  // Read and print file contents
  String fileContent = await FileUtils.readFile('entries.txt');
  print('\nFile contents:\n$fileContent');

  // Demonstrate date operations
  DateTime now = DateTime.now();
  DateTime future = DateTimeUtils.addDays(now, 7);
  print('\nCurrent date: ${DateTimeUtils.formatDate(now)}');
  print('Date after 7 days: ${DateTimeUtils.formatDate(future)}');
  print('Days between: ${DateTimeUtils.daysBetween(now, future)}');
}