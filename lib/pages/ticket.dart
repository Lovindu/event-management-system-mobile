import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:test_app/events/button_price.dart';
import 'package:test_app/events/tickets_card.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/pages/tickets_information.dart';

class Ticket extends StatefulWidget {
  const Ticket({super.key});

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffECECFE),
        body: ListView(
          children: [
            SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        'Your Tickets',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TicketInfo()));
                    },
                    child: TCard()),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TicketInfo()));
                    },
                    child: TCard()),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TicketInfo()));
                    },
                    child: TCard()),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  String content =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged... See more';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
          floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));
              },
              backgroundColor: Colors.transparent,
              child: Image.asset(
                'lib/images/back button.png',
                width: 30,
              ),
            ),
          ),
          body: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    //color: Color(0xff7270C2),
                    //borderRadius:BorderRadius.only(bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage("lib/images/Music_Night.png"),
                        fit: BoxFit.cover)),
                height: 500,
                width: 500,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff7270C2),
                ),
                height: 85,
                width: 300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Event Name',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: ButtonPrice(),
                          )
                        ],
                      ),
                      Text(
                        'Colombo,Sri Lanka',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '20th',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Saturday',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'September',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            '5.00PM Onwards',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                height: 60,
                width: 100,
                color: Color(0xff7270C2),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 180,
                  width: 400,
                  color: Color(0xff7270C2),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About this event:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReadMoreText(
                            content,
                            trimLines: 4,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: " Show More ",
                            trimExpandedText: " Show Less ",
                            lessStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            moreStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            style: TextStyle(
                                fontSize: 14, height: 1, color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                color: Color(0xff7270C2),
                height: 45,
                width: 100,
                child: Text(
                  'Artists:',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                height: 115,
                decoration: BoxDecoration(
                    color: Color(0xff7270C2),
                    borderRadius: BorderRadius.circular(0)),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Column(
                      children: [
                        Image.asset('lib/images/icons8-male-user-64.png'),
                        Text('Artist 1'),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset('lib/images/icons8-male-user-64.png'),
                        Text('Artist 2'),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset('lib/images/icons8-male-user-64.png'),
                        Text('Artist 3'),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset('lib/images/icons8-male-user-64.png'),
                        Text('Artist 4'),
                      ],
                    ),
                    
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff7270C2),
                    image: DecorationImage(
                        image: AssetImage('lib/images/map 1.png'))),
                padding: EdgeInsets.all(12),
                height: 300,
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location 📍',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Color(0xff7270C2),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Terms and Conditions',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        '• Tickets once booked cannot be exchanged or refunded',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Text(
                          '• An Internet handling fee per ticket may be levied. Please check the total amount before payment',
                          style: TextStyle(fontSize: 13, color: Colors.grey)),
                      Text(
                          '• We recommend that you arrive at least 30 minutes prior at the venue for a seamless entry ',
                          style: TextStyle(fontSize: 13, color: Colors.grey)),
                      Text(
                          '• Gates shut at 6:45 PM sharp post which entry will not be permitted.',
                          style: TextStyle(fontSize: 13, color: Colors.grey))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
