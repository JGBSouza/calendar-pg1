import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calendar",
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(228, 242, 245, 1.0),
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                    child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Image.asset('assets/profile-pic.png',
                                      width: 40, height: 40),
                                  const SizedBox(width: 200),
                                  Image.asset('assets/imagem-notificacao.png',
                                      width: 30, height: 30)
                                ]),
                            const SizedBox(height: 20),
                            Container(
                              width: 250,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Search"),
                                  const SizedBox(width: 180),
                                  Image.asset('assets/lupa.png',
                                      height: 20, width: 20)
                                ],
                              ),
                            )
                          ])
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Upcoming Event"),
                              const SizedBox(width: 140),
                              Image.asset('assets/3-dots-asset.png', width: 30)
                            ],
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: 250,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Column(
                              children: [
                                const Text("Report Project to Peter Parker"),
                                Row(children: [
                                  Container(
                                      width: 125,
                                      height: 25,
                                      child: Row(
                                        children: [
                                          Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0)),
                                              child: Image.asset(
                                                  'assets/clock-asset.png')),
                                          const Text(
                                            "09:00 am - 10:30 am",
                                            style: TextStyle(fontSize: 9.0),
                                          ),
                                        ],
                                      )),
                                  Container(
                                      width: 125,
                                      height: 25,
                                      child: Row(
                                        children: [
                                          Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0)),
                                              child: Image.asset(
                                                  'assets/calendar.png')),
                                          const Text(
                                            "Mon, Jan 13 2022",
                                            style: TextStyle(fontSize: 9.0),
                                          ),
                                        ],
                                      ))
                                ])
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Upcoming Schedule"),
                      const SizedBox(width: 120),
                      Image.asset('assets/3-dots-asset.png', width: 30)
                    ],
                  )
                ])))));
  }
}
