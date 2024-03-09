import 'package:bmi/const.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.male,
                            size: 100.0,
                          ),
                          Text("Male"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(Icons.female, size: 100.0),
                          Text("Female"),
                        ],
                      ),
                    ),
                  ], // Add a comma here
                ), // Add a comma here
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "176",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Hight"),
                          Row(
                            children: [
                              FloatingActionButton(
                                  onPressed: null,
                                  child: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Colors.blue,
                                  )),
                              SizedBox(
                                width: 40.0,
                              ),
                              FloatingActionButton(
                                  onPressed: null,
                                  child: Icon(
                                    Icons.remove,
                                    size: 40,
                                    color: Color.fromARGB(255, 161, 1, 135),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "76",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Weight"),
                          Row(
                            children: [
                              FloatingActionButton(
                                  onPressed: null,
                                  child: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Colors.blue,
                                  )),
                              SizedBox(
                                width: 40.0,
                              ),
                              FloatingActionButton(
                                  onPressed: null,
                                  child: Icon(
                                    Icons.remove,
                                    size: 40,
                                    color: Color.fromARGB(255, 161, 1, 135),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(children: [
                  Text(
                    "BMI",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    '22.00',
                    style: TextStyle(color: Colors.red, fontSize: 40),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
