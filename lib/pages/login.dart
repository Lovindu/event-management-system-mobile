import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test_app/Controller/auth_controller.dart';
import 'package:test_app/components/show_toast.dart';
import 'package:test_app/events/form_container.dart';
import 'package:test_app/pages/forget_password.dart';
import 'package:test_app/pages/loading.dart';
import 'package:test_app/pages/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSignIn = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
        child: Container(
          height: 840,
          color: Color(0xff4B38AC),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                // borderRadius: BorderRadius.only(
                //     topRight: Radius.circular(70.0),
                //     topLeft: Radius.circular(70.0),
                //     bottomLeft: Radius.elliptical(9000.0, 9000.0),
                //     bottomRight: Radius.elliptical(1000.0, 1000.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            'lib/images/8132 1.png',
                            width: MediaQuery.of(context).size.width * 1.1,
                            height: MediaQuery.of(context).size.height * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'LOGIN',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.0),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
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
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 7,
                  ),
                  child: FormContainerWidget(
                    hintText: "Enter your Password",
                    isPasswordField: true,
                    controller: _passwordController,
                  )),
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
                            color:
                                isChecked ? Colors.black : Colors.transparent,
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
                      style: TextStyle(fontSize: 13, color: Colors.white),
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
                      child: Text(
                        'Forgot Passoword ?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: _signIn,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 114.0, vertical: 8),
                    child: _isSignIn
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff7270C2)),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account ?',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffFC8E94),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffFC8E94)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {
                    _signInWithGoogle();
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 12.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/google.jpg',
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
      ),
    );
  }

  void _signIn() async {
    setState(() {
      _isSignIn = true;
    });
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSignIn = false;
    });

    if (user != null) {
      showToast(message: 'User is succesfully SignIn');
      Navigator.pushNamed(context, "/home");
    } else {
      showToast(message: "Input user credentials");
    }
  }

  _signInWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        await _firebaseAuth.signInWithCredential(credential);
        
        Navigator.pushNamed(context, "/home");
      }
    } catch (e) {
      showToast(message: "Some error occured $e");
    }
  }
}
