import 'package:flutter/material.dart';
import 'package:test_app/login.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
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
                child: Image.asset(
                  'images/jk.jpeg',
                  width: MediaQuery.of(context).size.width * 1.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Change Password',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.0),
                child: Row(
                  children: [
                    Text(
                      'Old password',
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
                      hintText: 'Enter your old password',
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
                      'New passowrd',
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
                      hintText: 'Enter your new passowrd',
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
                      'Confirm Password',
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
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'Set Password',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
