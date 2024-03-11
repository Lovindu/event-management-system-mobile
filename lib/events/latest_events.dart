import 'package:flutter/material.dart';

class LatestEvent {
  String name;
  String imagePath;

  LatestEvent({
    required this.name,
    required this.imagePath,
  });

  static List<LatestEvent> getLatest() {
    List<LatestEvent> latest = [];

    latest.add(LatestEvent(
        name: 'Event 1',
        imagePath: 'lib/images/8548949 3 (1).png'));
     latest.add(LatestEvent(
        name: 'Event 2',
        imagePath: 'lib/images/8548949 3 (1).png'));
      latest.add(LatestEvent(
        name: 'Event 3',
        imagePath: 'lib/images/8548949 3 (1).png'));
      
    return latest;
  }
}
