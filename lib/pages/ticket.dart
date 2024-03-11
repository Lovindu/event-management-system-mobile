import 'package:flutter/material.dart';
import 'package:test_app/events/button_price.dart';


class Ticket extends StatefulWidget {
  const Ticket({super.key});

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return TicketPage();
                }));
              },
              child: Text('Hello'),
            ),
          ),
        ));
  }
}

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Ticket Information'),
          ),
          body: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    
                    image: DecorationImage(
                        image: AssetImage("lib/images/Music_Night.png"),
                        fit: BoxFit.cover)),
                height: 500,
                width: 500,
              ),
              Container(
                height: 60,
                width: 100,
                color: Color(0xff7270C2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 30, 0),
                        child: ButtonPrice() //Button for Prices
                        ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff7270C2),
                ),
                height: 80,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Event Name',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '20th                            ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
                            'September                 ',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '      5.00PM Onwards',
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
                  height: 170,
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
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged... See more',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                color: Color(0xff7270C2),
                height: 40,
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
                height: 108,
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
                height: 176,
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
