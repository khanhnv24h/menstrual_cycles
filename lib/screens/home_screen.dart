import 'dart:math';

import 'package:app_menstrual_cycles/models/user_model.dart';
import 'package:app_menstrual_cycles/utils/lang.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  late DateTime _selectedDay;
  int color = -1;
  //
  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserModel>(context) ??
    //     UserModel(
    //       uid: "0",
    //       name: "",
    //       address: "",
    //       phoneNumber: "000-000-0000",
    //       periodLength: 0,
    //       menstrualLength: 0,
    //       lastMenstruation: [],
    //       requestIds: [],
    //     );
    //
    return Scaffold(
      drawer: Drawer(
        elevation: 0.0,
        child: ListView(
          children: [
            Text("111111 PAge Draw"),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(color: Colors.white),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Text(
              lang("appname", "Tính chu kỳ"),
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Lato",
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        actions: [
          DropdownButton<String>(
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 30,
              ),
              elevation: 16,
              style: const TextStyle(color: Colors.white, fontSize: 22),
              dropdownColor: Colors.pink[200],
              // underline: Container(
              //   height: 2,
              //   color: Colors.deepPurpleAccent,
              // ),
              value: currentLanguage,
              items: const [
                DropdownMenuItem(
                  value: "vi",
                  child: Text(
                    "VI",
                  ),
                ),
                DropdownMenuItem(
                  value: "en",
                  child: Text("EN"),
                ),
              ],
              onChanged: (String? name) {
                setState(() {
                  currentLanguage = name ?? "vi";
                });
              }),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0, bottom: 0),
            child: TableCalendar(
              calendarStyle: const CalendarStyle(isTodayHighlighted: true),
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, event) {
                  if (event.isNotEmpty) {
                    color++;
                    int a = 1, b = 1;
                    if (color == 0) {
                      a = 300;
                      b = 300;
                    } else if (color == 2) {
                      a = 300;
                      b = 200;
                    } else if (color == 3) {
                      a = 300;
                      b = 50;
                    } else if (color == 4) {
                      a = 200;
                      b = 50;
                    } else if (color == 5) {
                      a = 100;
                      b = 50;
                    } else {
                      a = 50;
                      b = 50;
                    }
                    //
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          colors: [
                            Colors.pink[a]!,
                            Colors.pink[b]!,
                          ],
                        ),
                      ),
                      margin: const EdgeInsets.all(4.0),
                      alignment: Alignment.center,
                      child: Text(
                        date.day.toString(),
                      ),
                    );
                  }
                  color = -1;
                  return Container();
                },
                todayBuilder: (context, date, events) => Container(
                  margin: const EdgeInsets.all(5.0),
                ),
              ),
              firstDay: DateTime.utc(2019, 10, 16),
              lastDay: DateTime.now().add(Duration(days: 1000)),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20, top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Text(
                        lang("menstrual-length", "Chiều dài kinh nguyệt"),
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(flex: 3),
                      Card(
                        color: Colors.pink[200],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Text(
                            "4 days",
                            style: TextStyle(
                                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20, top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        lang("period-length", "Thời gian kéo dài"),
                        style: TextStyle(fontSize: 20),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      Card(
                        color: Colors.pink[200],
                        child: const Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                          child: Text(
                            "12 days",
                            style: TextStyle(
                                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // Spacer(flex:1,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20, top: 8, bottom: 8),
                  child: Row(children: [
                    Text(
                      lang("last-menstruation", "Kỳ kinh cuối"),
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Card(
                      color: Colors.pink[200],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        child: Text(
                          "28",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
