import 'package:flutter/material.dart';

class TCard extends StatefulWidget {
  const TCard({super.key});

  @override
  State<TCard> createState() => _TCardState();
}

class _TCardState extends State<TCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage('lib/images/Your_Tickets.png'),
                  fit: BoxFit.fill),
            ),
            width: 354,
            height: 133,
          ),
          Container(
            height: 124,
            width: 354,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Event Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  '20th Feb 2024',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff8B8E9B),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '---------------------------------------',
                  style: TextStyle(
                      color: Color(0xff8B8E9B), fontWeight: FontWeight.bold),
                ),
                Text(
                  'Number of tickets: 01',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
