import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double height = 0; // Initial height
  double weight = 0; // Initial weight

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(Icons.female, size: 100.0),
                          Text("Female"),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            height.toStringAsFixed(0),
                            style: const TextStyle(
                                color: Colors.red,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text("Height"),
                          Row(
                            children: [
                              FloatingActionButton(
                                onPressed: onHeightMinus,
                                child: const Icon(
                                  Icons.remove,
                                  size: 40,
                                  color: Color.fromARGB(255, 161, 1, 135),
                                ),
                              ),
                              const SizedBox(
                                width: 40.0,
                              ),
                              FloatingActionButton(
                                onPressed: onHeightPlus,
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
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            weight.toStringAsFixed(0),
                            style: const TextStyle(
                                color: Colors.red,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text("Weight"),
                          Row(
                            children: [
                              FloatingActionButton(
                                onPressed: onWeightMinus,
                                child: const Icon(
                                  Icons.remove,
                                  size: 40,
                                  color: Color.fromARGB(255, 161, 1, 135),
                                ),
                              ),
                              const SizedBox(
                                width: 40.0,
                              ),
                              FloatingActionButton(
                                onPressed: onWeightPlus,
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
                const SizedBox(height: 50),
                Column(
                  children: [
                    const Text(
                      "BMI",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      calculateBMI().toStringAsFixed(2),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 14, 1, 63),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onHeightMinus() {
    setState(() {
      height -= 1;
    });
  }

  void onHeightPlus() {
    setState(() {
      height += 1;
    });
  }

  void onWeightMinus() {
    setState(() {
      weight -= 1;
    });
  }

  void onWeightPlus() {
    setState(() {
      weight += 1;
    });
  }

  double calculateBMI() {
    // Add your BMI calculation logic here
    // BMI = weight (kg) / (height (m))^2
    // Adjust the formula based on your requirements
    return weight / ((height / 100) * (height / 100));
  }
}

void main() {
  runApp(const MaterialApp(
    home: MainPage(),
  ));
}
