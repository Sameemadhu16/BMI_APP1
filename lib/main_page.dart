import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 150,
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
                        Icon(
                          Icons.female,
                          size: 150,
                        ),
                        Text("Female"),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Height"),
                        Text(
                          "176",
                          style: kInputLableColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              backgroundColor:
                                  Color.fromARGB(189, 187, 195, 74),
                              child: Icon(
                                Icons.remove,
                                size: 40,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              backgroundColor:
                                  Color.fromARGB(189, 187, 195, 74),
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.blue,
                              ),
                            ),
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
                        Text("Weight"),
                        Text(
                          "76",
                          style: kInputLableColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              backgroundColor:
                                  Color.fromARGB(189, 187, 195, 74),
                              child: Icon(
                                Icons.remove,
                                size: 40,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              backgroundColor:
                                  Color.fromARGB(189, 187, 195, 74),
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  const Text("BMI"),
                  Text(
                    "22.00",
                    style: kInputLableColor.copyWith(
                        color: kOutputTextColor, fontSize: 60),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
