import 'package:flutter/material.dart';
import 'package:test_app/Forgot.dart';
import 'package:test_app/Sign.dart';
import 'package:test_app/main.dart';
import 'package:test_app/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4B38AC),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            );
          },
          backgroundColor: Colors.transparent,
          child: Image.asset(
            'images/back arrow.png',
            width: 10,
          ),
        ),
      ),
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              // borderRadius: BorderRadius.only(
              //     topRight: Radius.circular(70.0),
              //     topLeft: Radius.circular(70.0),
              //     bottomLeft: Radius.elliptical(9000.0, 9000.0),
              //     bottomRight: Radius.elliptical(1000.0, 1000.0)),
              child: Image.asset(
                'images/jk.jpeg',
                width: MediaQuery.of(context).size.width * 1.1,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'LOGIN',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 20,
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
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  filled: true,
                  //fillColor: Color(0xFF7270C2),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 3),
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
                    'Remember Me',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Forgot(),
                        ),
                      );
                    },
                    child: Text('Forgot Passoword ?'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80.0, vertical: 5),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
              child: Text(
                'Dont have an account ? Sign Up',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/gg1.png',
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Login with Google',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
