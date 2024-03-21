import 'package:flutter/material.dart';
import 'package:test_app/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: [
            ClipRRect(
              child: Image.asset(
                'images/pic2.jpeg',
                width: MediaQuery.of(context).size.width * 1.4,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
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
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 18),
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
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.0),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              ),
            ),
            SizedBox(height: 10),
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
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80.0, vertical: 5),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
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
