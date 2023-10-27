import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  String masum;

  SecondRoute({required this.masum});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  TextEditingController heightController = TextEditingController();

  TextEditingController weightController = TextEditingController();

  double bmiResult = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SafeArea(
              child: Text(
                "Hey, ${widget.masum}...Let's check your Bmi",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  child: Center(child: Image.asset("assets/man.png")),
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Center(child: Image.asset("assets/woman.png")),
                  width: 200,
                  height: 200,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Weight",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(25),
                  height: 50,
                  width: 192,
                  // color: Color(0xB557D9C2),
                  decoration: ShapeDecoration(
                    color: Color(0xB557D9C2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Expanded(
                    flex: 3,
                    child: TextField(
                      controller: weightController,
                      keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 109,
                  height: 50,
                  child: Center(child: Text("Kg")),
                  decoration: ShapeDecoration(
                    color: Color(0xA53ADEC0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: Expanded(
                  flex: 3,
                  child: Text(
                    "Hight",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(25),
                  height: 50,
                  width: 192,
                  // color: Color(0xB557D9C2),
                  decoration: ShapeDecoration(
                    color: Color(0xB557D9C2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: TextField(
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 109,
                  height: 50,
                  child: Center(child: Text("cm")),
                  decoration: ShapeDecoration(
                    color: Color(0xA53ADEC0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: InkWell(
              onTap: () {
                double weight = double.parse(weightController.text);
                double height = double.parse(heightController.text);

                // Convert height
                height = height / 100.0;

                // bmi formula
                double bmi = weight / (height * height);
                setState(() {
                  bmiResult = bmi;
                });
              },
              child: Center(
                  child: Text(
                "Calculate Your Bmi",
                style: TextStyle(fontSize: 35),
              )),
            ),
            width: 330,
            height: 86,
            decoration: ShapeDecoration(
              color: Color(0xFC26E7C4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
          Text("Your BMI Result: $bmiResult",style: TextStyle(fontSize: 30,color: Colors.red),)
        ],
      ),
    );
  }
}
