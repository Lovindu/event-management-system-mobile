import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Controller/auth_controller.dart';
import 'package:test_app/components/show_toast.dart';
import 'package:test_app/events/form_container.dart';
import 'package:test_app/pages/loading.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  bool _isSignUp = false;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nic_Controller = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _contactNumController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nic_Controller.dispose();
    _addressController.dispose();
    _contactNumController.dispose();
    super.dispose();
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B38AC),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Loading(),
              ),
            );
          },
          backgroundColor: Colors.transparent,
          child: Image.asset(
            'lib/images/back button.png',
            width: 40,
          ),
        ),
      ),
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                  height: 14,
                ),
            Stack(
              children: [
                
                Container(
                  padding: EdgeInsets.all(12),
                  child: ClipRRect(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          (20.0),
                        ),
                        child: Image.asset(
                          'lib/images/8132 1.png',
                          width: MediaQuery.of(context).size.width * 1.1,
                          height: MediaQuery.of(context).size.height * 0.6,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    height: 110,
                    width: 500,
                    top: 380,
                    left: 0,
                    child: ClipRect(
                      child: Image.asset('lib/images/Vector 1.png'),
                    )),
              ],
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: FormContainerWidget(
                hintText: "Enter your username",
                isPasswordField: false,
                controller: _usernameController,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 18,color: Colors.white,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                ),
                child: FormContainerWidget(
                  hintText: "Enter your Email",
                  isPasswordField: false,
                  controller: _emailController,
                )),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 18,color: Colors.white,),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: FormContainerWidget(
                hintText: "Enter your Password",
                isPasswordField: true,
                controller: _passwordController,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    'Contact No',
                    style: TextStyle(fontSize: 18,color: Colors.white,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                ),
                child: FormContainerWidget(
                  hintText: "Enter your Contact no",
                  isPasswordField: false,
                  controller: _contactNumController,
                )),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    'Address',
                    style: TextStyle(fontSize: 18,color: Colors.white,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                ),
                child: FormContainerWidget(
                  hintText: "Enter your Address",
                  controller: _addressController,
                )),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    'NIC( National Identity Card)',
                    style: TextStyle(fontSize: 18,color: Colors.white,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                ),
                child: FormContainerWidget(
                  hintText: "Enter your NIC No",
                  controller: _nic_Controller,
                )),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.5),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: ClipOval(
                      child: Container(
                        width: 14.0,
                        height: 14.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.8),
                          color: isChecked ? Colors.black : Colors.transparent,
                        ),
                        child: isChecked
                            ? Icon(
                                Icons.check,
                                size: 10.0,
                                color: Colors.white,
                              )
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'I agree to all the Terms & Conditions',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: _signUp,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 85.0, vertical: 5),
                    child: _isSignUp
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text(
                            'REGISTER',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff7270C2)),
                          ),
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }

  void _signUp() async {
    if (_usernameController.text.isEmpty ||
      _emailController.text.isEmpty ||
      _passwordController.text.isEmpty ||
      _nic_Controller.text.isEmpty ||
      _addressController.text.isEmpty ||
      _contactNumController.text.isEmpty) {
    showToast(message: "Please fill in all the fields");
    return;
  }

  setState(() {
    _isSignUp = false;
  });

  String username = _usernameController.text;
  String email = _emailController.text;
  String password = _passwordController.text;
  String NIC = _nic_Controller.text;
  String address = _addressController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    addUserDetails(
        _emailController.text.trim(),
        _usernameController.text.trim(),
        _addressController.text.trim(),
        _nic_Controller.text.trim(),
        int.parse(_contactNumController.text.trim()));
    setState(() {
      _isSignUp = false;
    });
    if (user != null) {
      showToast(message: 'User is succesfully created');
      Navigator.pushNamed(context, "/home");
    } else {
      showToast(message: "Some error happenedd ");
    }
  }

  Future addUserDetails(String email, String name, String address, String nic,
      int contactno) async {
    await FirebaseFirestore.instance.collection("Users").add({
      'email': email,
      'name': name,
      'address': address,
      'NIC': nic,
      'contactno': contactno
    });
  }
}


