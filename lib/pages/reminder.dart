import 'package:flutter/material.dart';
import 'package:test_app/events/reminder_card.dart';
import 'package:test_app/events/reminders.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  List<ReminderList> reminders = [
    ReminderList(name: 'Reminder 1'),
    ReminderList(name: 'Reminder 2'),
    ReminderList(name: 'Reminder 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffECECFE),
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Reminder',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 30,
                height: 30,
                color: Colors.white,
                child: Image.asset(
                  'lib/images/icons8-reminder.gif',
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
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
        body: SafeArea(
            child: Row(
          children: [
            _list(),
          ],
        )),
      ),
    );
  }

  Widget _list() {
    return Expanded(
      child: ListView(
        children: [
          for (ReminderList remi in reminders)
            ReminderCard(
              name: remi.name,
              deleteReminder: () {
                setState(() {
                  reminders.remove(remi);
                });
              },
            )
        ],
      ),
    );
  }
}
