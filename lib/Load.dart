import 'package:flutter/material.dart';
import 'package:test_app/Sign.dart';
import 'package:test_app/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: Image.asset(
              'images/jk.jpeg',
              width: MediaQuery.of(context).size.width * 1.1,
              height: MediaQuery.of(context).size.height * 0.6,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              padding: EdgeInsets.only(right: 30, left: 30, top: 10),
              child: Text(
                'Unlock unforgettable experiences with just a tap - your journey starts\n                          here!',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
