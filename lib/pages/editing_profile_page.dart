import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_app/events/button_widget.dart';
import 'package:test_app/events/profile_widget.dart';
import 'package:test_app/events/text_field_widget.dart';
import 'package:test_app/events/user_preferences.dart';
import 'package:test_app/events/user_profile.dart';
import 'package:path/path.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  User user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {
                /*final image =
                    await ImagePicker().getImage(source: ImageSource.gallery);

                if (image == null) return;

                final directory = await getApplicationDocumentsDirectory();
                final name = basename(image.path);
                final imageFile = File('${directory.path}/$name');
                final newImage = await File(image.path).copy(imageFile.path);

                setState(() => user = user.copy(imagePath: newImage.path));*/
              },
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Address',
              text: user.address,
              onChanged: (address) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Contact Number',
              text: user.contactno,
              onChanged: (contactno) {},
            ),
            const SizedBox(
              height: 24,
            ),
            ButtonWidget(
              text: 'Save',
              onClicked: () {
                //UserPreferences.setUser(user);
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      );
}
