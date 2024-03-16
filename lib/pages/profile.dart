import 'package:flutter/material.dart';
import 'package:test_app/events/profile_widget.dart';
import 'package:test_app/events/user_preferences.dart';
import 'package:test_app/events/user_profile.dart';
import 'package:test_app/pages/editing_profile_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 25,
          ),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
              //setState(() {});
            },
          ),
          const SizedBox(
            height: 24,
          ),
          buildName(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            Text(
              user.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff4B38AC)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Address',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff4B38AC)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    user.address,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff4B38AC)),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  user.email,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Contact Number',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff4B38AC)),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  user.contactno,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      );
}
