import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static late final SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();

  }

  static read (String key){
   return prefs.get(key); 
  }
  static write(String key, String value){
    prefs.setString(key, value);
  }

static delete(key){
  prefs.remove(key);
}

}
