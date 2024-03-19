import 'package:flutter/material.dart';

class Event1 {
  String name;
  String imagePath;

  Event1({
    required this.name,
    required this.imagePath,
  });

  static List<Event1> getEvents() {
    List<Event1> categories = [];

    categories.add(Event1(
        name: 'Test1',
        imagePath: 'lib/images/Group 7 (2).png'));
     categories.add(Event1(
        name: 'Test2',
        imagePath: 'lib/images/Group 7 (2).png'));
      categories.add(Event1(
        name: 'Test3',
        imagePath: 'lib/images/Group 7 (2).png'));
    return categories;
  }
}
