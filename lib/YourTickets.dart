import 'package:flutter/material.dart';

class YourTickets extends StatefulWidget {
  const YourTickets({super.key});

  @override
  State<YourTickets> createState() => _YourTicketsState();
}

class _YourTicketsState extends State<YourTickets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 0, 0),
            child: Text(
              'Your Tickets',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 7),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  image: DecorationImage(
                      image: AssetImage('images/Tickets.jpeg'),
                      fit: BoxFit.cover),
                ),
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: Text(
                'Event Name',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: Text(
                '20th, Feb ,2024',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF8B8E9B),
                ),
              ),
            ),
            SizedBox(height: 6),
            Expanded(
              child: Divider(
                color: Color(0xFF8B8E9B),
                height: 2,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 105.0),
              child: Text(
                'Number of Tickets : 01',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 7),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  image: DecorationImage(
                      image: AssetImage('images/Tickets.jpeg'),
                      fit: BoxFit.cover),
                ),
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: Text(
                'Event Name',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: Text(
                '20th, Feb ,2024',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF8B8E9B),
                ),
              ),
            ),
            SizedBox(height: 6),
            Expanded(
              child: Divider(
                color: Color(0xFF8B8E9B),
                height: 2,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 105.0),
              child: Text(
                'Number of Tickets : 01',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
