import 'package:flutter/material.dart';
import 'package:test_app/events/event_ticket_summary.dart';

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
        ),
        
        body: ListView(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff4B38AC)),
                    borderRadius: BorderRadius.circular(10)),
                child: RadioListTile(
                  title: Text(
                    'Category 01                      Rs.1000',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                  title: Text(
                    'Category 02                      Rs.2000',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                  title: Text(
                    'Category 03                      Rs.3000',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
