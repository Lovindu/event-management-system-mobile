import 'package:flutter/material.dart';
import 'package:test_app/events/event_ticket_selection.dart';

class PriceItems extends StatelessWidget {
  const PriceItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(55, 10, 0, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "   Ticket Prices       ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff7270C2)),
                  ),
                ],
              ),
            ),
            height: 50,
            width: 300,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EvenetTicketSelection()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff7270C2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        "Category 01",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "RS.1000",
                        style: TextStyle(fontSize: 18, color: Color(0xffFC8E94)),
                      ),
                    ],
                  ),
                
              ),
              height: 50,
              width: 300,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EvenetTicketSelection()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff7270C2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        "Category 02",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                       SizedBox(
                        width: 70,
                      ),
                      Text(
                        "RS.2000",
                        style: TextStyle(fontSize: 18, color: Color(0xffFC8E94)),
                      ),
                    ],
                  ),
              ),
              height: 50,
              width: 300,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EvenetTicketSelection()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff7270C2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        "Category 03",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                       SizedBox(
                        width: 70,
                      ),
                      Text(
                        "RS.3000",
                        style: TextStyle(fontSize: 18, color: Color(0xffFC8E94)),
                      ),
                    ],
                  ),
              ),
              height: 50,
              width: 300,
            ),
          ),
        ),
      ],
    );
  }
}
