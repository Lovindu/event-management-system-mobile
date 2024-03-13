import 'package:flutter/material.dart';
import 'package:test_app/events/search_events.dart';
import 'package:test_app/pages/search_page_with_filters.dart';

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
        body: Container(
          decoration: BoxDecoration(color: Color(0xffECECFE)),
          child: ListView(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilterSearch()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff4B38AC)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                            child: Text(
                              'Search',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                          Icon(Icons.search, color: Colors.black)
                        ],
                      ),
                    ),
                  ),
                  /*GestureDetector(
                    onTap: () {
                      print('Filters clicked');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              decoration:
                                  BoxDecoration(color: Color(0xffECECFE)),
                              padding: EdgeInsets.only(right: 12),
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                  'lib/images/icons8-filters-64.png')),
                        ],
                      ),
                    ),
                  ),*/
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.0, 0, 8.0, 4.0),
                child: Container(
                  decoration: BoxDecoration(color: Color(0xffECECFE)),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 170,
                          color: Color(0xffECECFE),
                          child: Image.asset('lib/images/8548949 3 (1).png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 170,
                          color: Color(0xffECECFE),
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
                  decoration: BoxDecoration(color: Color(0xffECECFE)),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 170,
                          color: Color(0xffECECFE),
                          child: Image.asset('lib/images/8548949 3 (1).png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 170,
                          color: Color(0xffECECFE),
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
                  decoration: BoxDecoration(color: Color(0xffECECFE)),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 170,
                          color: Color(0xffECECFE),
                          child: Image.asset('lib/images/8548949 3 (1).png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 170,
                          color: Color(0xffECECFE),
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
                  decoration: BoxDecoration(color: Color(0xffECECFE)),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 170,
                          color: Color(0xffECECFE),
                          child: Image.asset('lib/images/8548949 3 (1).png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 170,
                          color: Color(0xffECECFE),
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
      ),
    );
  }
}
