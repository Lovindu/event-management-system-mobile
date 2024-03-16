import 'package:flutter/material.dart';
import 'package:test_app/events/event_ticket_summary.dart';

class EvenetTicketConfirmation extends StatefulWidget {
  
  const EvenetTicketConfirmation({super.key});

  @override
  State<EvenetTicketConfirmation> createState() =>
      _EvenetTicketSelectionState();
}

List<String> options = ['options 1', 'options 2'];

class _EvenetTicketSelectionState extends State<EvenetTicketConfirmation> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ticket Confirmation',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EventTicketSummary()));
            },
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'lib/images/Ellipse 19.png',
                height: 30,
                width: 30,
              ),
              margin: EdgeInsets.all(10),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 355,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff4B38AC)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Event name',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text(
                            'Date:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 36.0),
                          Text(
                            'Wed, 10, June',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Time:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 33.0),
                          Text(
                            '5pm onwards',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Location:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Colombo',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '------------------------------------------------',
                            style: TextStyle(
                                color: Color(0xff4B38AC),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                '(Ticket Type)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'x 1',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          Row(
                            children: [
                              Text(
                                'Rs.2000',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10.0),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Booking fee',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 207,
                          ),
                          Row(
                            children: [
                              Text(
                                'Rs.0',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '------------------------------------------------',
                            style: TextStyle(
                                color: Color(0xff4B38AC),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: Color(0xff4B38AC),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 240,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rs.2000',
                                style: TextStyle(
                                    color: Color(0xff4B38AC),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Text(
                'How to pick up the Ticket',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
            ),
            RadioListTile(
              title: Row(
                children: [
                  Text(
                    'Option 01',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              value: options[0],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Row(
                children: [
                  Text(
                    'Option 02',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              value: options[1],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 5),
              child: Text(
                'Instructions',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
              child: Text(
                '• Instruction 01',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
              child: Text('• Instruction 02'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text('• Instruction 03'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFC8E94)),
                  onPressed: () {},
                  child: Text(
                    'Proceed to pay',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
