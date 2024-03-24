import 'package:flutter/material.dart';

class SplashScreenLoading extends StatefulWidget {
  final Widget? child;
  const SplashScreenLoading({super.key, this.child});

  @override
  State<SplashScreenLoading> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenLoading> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget.child!),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/Animation - 1711281484547.gif')
          ],
        ),
      ),
    );
  }
}