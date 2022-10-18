import 'dart:core';

Map<String, String> _vi = {};
Map<String, String> _en = {
  "appname": "Period tracker",
  "hello": "Hello",
  "pushedtime": "You have pushed the button this many times:",
  "menstrual-length": "Menstrual Length",
  "period-length": "Period length",
  "last-menstruation": "Last Menstruation",
};

String currentLanguage = "vi";
String lang(String key, String defaultString) {
  if (currentLanguage == "en") return _en[key] ?? defaultString;
  return _vi[key] ?? defaultString;
}
