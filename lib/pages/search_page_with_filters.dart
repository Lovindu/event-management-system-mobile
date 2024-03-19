import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/main.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/pages/home_main.dart';

class FilterSearch extends StatefulWidget {
  const FilterSearch({super.key});

  @override
  State<FilterSearch> createState() => _FilterSearchState();
}

class _FilterSearchState extends State<FilterSearch> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    InkWell(
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: Colors.purple[50],
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          //fillColor: Color(0xff7270C2),
                          border: InputBorder.none,
                          /*focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),*/
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: searchController == null
                              ? null
                              : IconButton(
                                  icon: Icon(Icons.cancel_rounded),
                                  onPressed: () {
                                    searchController.clear();
                                  },
                                ),
                        ),
                      ),
                    )),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'lib/images/filter02.png',
                        height: 30,
                        width: 30,
                      ),
                      margin: EdgeInsets.all(10),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
