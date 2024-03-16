import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/events/user_profile.dart';

class UserPreferences {
  //static late SharedPreferences _preferences;
  //static const _keyUser = 'user';
  static const myUser = User(
     imagePath:
          'https://imgv3.fotor.com/images/slider-image/Female-portrait-picture-enhanced-with-better-clarity-and-higher-quality-using-Fotors-free-online-AI-photo-enhancer.jpg',
      name: 'Tharusha Vihanga',
      email: 'tharusha@gmail.com',
      address: '122/2L Pushparama Road,Kadawatha',
      contactno: '0701251673');

  /*static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }*/
}
