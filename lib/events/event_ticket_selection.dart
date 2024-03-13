import 'package:flutter/material.dart';
import 'package:test_app/events/event_ticket_summary.dart';
import 'package:test_app/pages/ticket.dart';

class EvenetTicketSelection extends StatefulWidget {
  const EvenetTicketSelection({super.key});

  @override
  State<EvenetTicketSelection> createState() => _EvenetTicketSelectionState();
}

List<String> options = ['options 1', 'options 2', 'options 3'];

class _EvenetTicketSelectionState extends State<EvenetTicketSelection> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: ListView(
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
                child: RadioListTile(
                  title: Row(
                    children: [
                      Text(
                        'Category 01',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
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
                  value: options[0],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
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
                child: RadioListTile(
                  title: Row(
                    children: [
                      Text(
                        'Category 02',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
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
                  value: options[1],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
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
                child: RadioListTile(
                  title: Row(
                    children: [
                      Text(
                        'Category 03',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
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
                  value: options[2],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 280,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFC8E94)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EventTicketSummary()));
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
