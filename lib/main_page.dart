import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;
  int weight = 70;
  String gender = "";

  late double bmi = calculateBMI(height: height, weight: weight);

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
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      //print("Male");
                      setState(() {
                        gender = 'M';
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                          color: gender == 'M'
                              ? const Color.fromARGB(255, 68, 0, 255)
                              : const Color.fromARGB(255, 217, 0, 255),
                          borderRadius: BorderRadius.circular(25)),
                      padding: const EdgeInsets.all(8.0),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.male,
                            size: 150,
                          ),
                          Text("Male"),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      //print("Female");
                      setState(() {
                        gender = "F";
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                          color: gender == 'F'
                              ? const Color.fromARGB(255, 255, 0, 230)
                              : const Color.fromARGB(255, 255, 0, 68),
                          borderRadius: BorderRadius.circular(25)),
                      padding: const EdgeInsets.all(8.0),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.female,
                            size: 150,
                          ),
                          Text("Female"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Height"),
                        Text(
                          "$height",
                          style: kInputLableColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 50) height--;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              backgroundColor:
                                  const Color.fromARGB(189, 187, 195, 74),
                              child: const Icon(
                                Icons.remove,
                                size: 40,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height < 250) height++;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              backgroundColor:
                                  const Color.fromARGB(189, 187, 195, 74),
                              child: const Icon(
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
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Weight"),
                        Text(
                          "$weight",
                          style: kInputLableColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 20) weight--;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              backgroundColor:
                                  const Color.fromARGB(189, 187, 195, 74),
                              child: const Icon(
                                Icons.remove,
                                size: 40,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight < 350) weight++;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              backgroundColor:
                                  const Color.fromARGB(189, 187, 195, 74),
                              child: const Icon(
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
                    bmi.toStringAsFixed(2),
                    style: kInputLableColor.copyWith(
                        color: kOutputTextColor, fontSize: 60),
                  ),
                  Text(getResult(bmi))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  double calculateBMI({required int height, required int weight}) {
    return weight / (height * height) * 10000;
  }

  String getResult(bmiValue) {
    if (bmiValue >= 25) {
      return 'Overweight';
    } else if (bmiValue > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
