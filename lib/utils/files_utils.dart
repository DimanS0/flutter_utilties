import 'dart:io';

class FileUtils {
  static Future<String> readFile(String path) async {
    try {
      File file = File(path);
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      print('Error reading file: $e');
      return '';
    }
  }

  static Future<void> writeFile(String path, String content) async {
    try {
      File file = File(path);
      await file.writeAsString(content);
      print('File written successfully');
    } catch (e) {
      print('Error writing file: $e');
    }
  }
}