import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/events/user_profile.dart';

class UserPreferences {
  //static late SharedPreferences _preferences;
  //static const _keyUser = 'user';
  static const myUser = User(
     imagePath:
          'https://static-00.iconduck.com/assets.00/profile-circle-icon-2048x2048-cqe5466q.png',
      name: 'User Name',
      email: 'tharusha@gmail.com',
      address: '122/2L Pushparama ,Kadawatha',
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
