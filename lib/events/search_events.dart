import 'package:flutter/material.dart';

class SearchEvent {
  String name;
  String imagePath;

  SearchEvent({
    required this.name,
    required this.imagePath,
  });

  static List<SearchEvent> getSearchEvents() {
    List<SearchEvent> searchEvents = [];

    searchEvents.add(SearchEvent(
        name: 'Test1',
        imagePath: 'lib/images/8548949 3 (1).png'));
    searchEvents.add(SearchEvent(
        name: 'Test2',
        imagePath: 'lib/images/8548949 3 (1).png'));
    searchEvents.add(SearchEvent(
        name: 'Test2',
        imagePath: 'lib/images/8548949 3 (1).png'));
    return searchEvents;
  }
}

