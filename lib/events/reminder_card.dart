import 'package:flutter/material.dart';

class ReminderCard extends StatefulWidget {
  final String name;
  final Function deleteReminder;
  const ReminderCard(
      {super.key, required this.name, required this.deleteReminder});

  @override
  State<ReminderCard> createState() => _ReminderCardState();
}

class _ReminderCardState extends State<ReminderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xff4B38AC), borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        title: Row(
          children: [
            Image.asset('lib/images/icons8-reminder-24.png'),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.name,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () => widget.deleteReminder(),
          icon: Image.asset('lib/images/icons8-delete-32.png')
        ),
      ),
    );
  }
}
