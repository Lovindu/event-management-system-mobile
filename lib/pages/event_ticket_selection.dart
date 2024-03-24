import 'package:flutter/material.dart';
import 'package:test_app/pages/event_ticket_summary.dart';
import 'package:test_app/pages/ticket.dart';

class EvenetTicketSelection extends StatefulWidget {
  const EvenetTicketSelection({super.key});

  @override
  State<EvenetTicketSelection> createState() => _EvenetTicketSelectionState();
}

List<String> options = ['options 1', 'options 2', 'options 3'];

class _EvenetTicketSelectionState extends State<EvenetTicketSelection> {
  double selectedOption = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Select Preferred Ticket \nCategory',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TicketPage()));
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
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff4B38AC)),
                    borderRadius: BorderRadius.circular(10)),
                child: RadioListTile<double>(
                  title: Row(
                    children: [
                      Text(
                        'Category 01',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Rs.1000',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    'Additional Information',
                    style: TextStyle(color: Colors.grey),
                  ),
                  value: 1000.0,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff4B38AC)),
                    borderRadius: BorderRadius.circular(10)),
                child: RadioListTile<double>(
                  title: Row(
                    children: [
                      Text(
                        'Category 02',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Rs.2000',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    'Additional Information',
                    style: TextStyle(color: Colors.grey),
                  ),
                  value: 2000.0,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff4B38AC)),
                    borderRadius: BorderRadius.circular(10)),
                child: RadioListTile<double>(
                  title: Row(
                    children: [
                      Text(
                        'Category 03',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Rs.3000',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    'Additional Information',
                    style: TextStyle(color: Colors.grey),
                  ),
                  value: 3000.0,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 270,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFC8E94)),
                  onPressed: () {
                  if (selectedOption == 0.0) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error',style: TextStyle(color: Colors.white),),
                          backgroundColor: Color(0xff7270C2),
                          elevation: 24.0,
                          content: Text('Please select an option',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK',style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventTicketSummary(selectedOption: selectedOption,)),
                    );
                  }
                },
                  child: Text(
                    'Proceed',
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
