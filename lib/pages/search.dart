import 'package:flutter/material.dart';
import 'package:test_app/events/search_events.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<SearchEvent> searchEvents = [];
  void _getSearchEvents() {
    searchEvents = SearchEvent.getSearchEvents();
  }

  @override
  Widget build(BuildContext context) {
    _getSearchEvents();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.black),
                  ),
                  Icon(Icons.search, color: Colors.black)
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Filters clicked');
              },
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        padding: EdgeInsets.only(right: 12),
                        height: 40,
                        width: 40,
                        child: Image.asset('lib/images/icons8-filters-64.png')),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 0, 8.0, 4.0),
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 100,
                        width: 170,
                        color: Colors.white,
                        child: Image.asset('lib/images/8548949 3 (1).png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 100,
                        width: 170,
                        color: Colors.white,
                        child: Image.asset('lib/images/8548949 3 (1).png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 8.0, 4.0),
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 100,
                        width: 170,
                        color: Colors.white,
                        child: Image.asset('lib/images/8548949 3 (1).png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 100,
                        width: 170,
                        color: Colors.white,
                        child: Image.asset('lib/images/8548949 3 (1).png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 8.0, 4.0),
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 100,
                        width: 170,
                        color: Colors.white,
                        child: Image.asset('lib/images/8548949 3 (1).png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 100,
                        width: 170,
                        color: Colors.white,
                        child: Image.asset('lib/images/8548949 3 (1).png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 8.0, 4.0),
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 100,
                        width: 170,
                        color: Colors.white,
                        child: Image.asset('lib/images/8548949 3 (1).png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 100,
                        width: 170,
                        color: Colors.white,
                        child: Image.asset('lib/images/8548949 3 (1).png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
