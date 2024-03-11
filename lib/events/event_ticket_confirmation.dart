import 'package:flutter/material.dart';

class EvenetTicketConfirmation extends StatefulWidget {
  const EvenetTicketConfirmation({super.key});

  @override
  State<EvenetTicketConfirmation> createState() =>
      _EvenetTicketSelectionState();
}

class _EvenetTicketSelectionState extends State<EvenetTicketConfirmation> {
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
        body: Scaffold(),
      ),
    );
  }
}
