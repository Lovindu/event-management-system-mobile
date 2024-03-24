import 'package:test_app/events/user_profile.dart';

class UserPreferences {
  //static late SharedPreferences _preferences;
  //static const _keyUser = 'user';
  static const myUser = UserPage(
     imagePath:
          'https://img.freepik.com/premium-vector/user-profile-icon-flat-style-member-avatar-vector-illustration-isolated-background-human-permission-sign-business-concept_157943-15752.jpg',
      name: 'User Name',
      email: 'tharusha@gmail.com',
      address: '123/2 Pushparama ,Kadawatha',
      contactno: '0709999999');

 /* static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(UserPage user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static UserPage getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : UserPage.fromJson(jsonDecode(json));
  }*/
}
