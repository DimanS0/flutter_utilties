class StringUtils {
  static String concatenate(String str1, String str2) => str1 + str2;

  static String interpolate(String name, int age) => "My name is $name and I'm $age years old.";

  static String extractSubstring(String str, int start, int end) => str.substring(start, end);

  static String toUpperCase(String str) => str.toUpperCase();

  static String toLowerCase(String str) => str.toLowerCase();

  static String reverse(String str) => str.split('').reversed.join();

  static int length(String str) => str.length;
}