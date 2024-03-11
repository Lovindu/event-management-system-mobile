import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:test_app/events/price_items.dart';

class ButtonPrice extends StatelessWidget {
  const ButtonPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(context: context, bodyBuilder: (context)=>PriceItems(),
      width: 280,
      height: 270,
      backgroundColor: Colors.white,
      direction: PopoverDirection.bottom),
      
      child: Container(
        height: 40,
        child: Image.asset('lib/images/Rectangle 79 (1).png'),
      ),
      
    );
  }
}
