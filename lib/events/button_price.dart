import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:test_app/events/price_items.dart';

class ButtonPrice extends StatelessWidget {
  const ButtonPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
          context: context,
          bodyBuilder: (context) => PriceItems(),
          width: 280,
          height: 270,
          backgroundColor: Colors.white,
          direction: PopoverDirection.bottom),
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xffFC8E94),
          ),
          height: 44,
          width: 180,
          child: Text(
            'Buy Tickets',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      
    );
  }
}
