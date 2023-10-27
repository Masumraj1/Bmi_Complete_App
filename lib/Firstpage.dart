import 'package:bmi/Second_Route.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  TextEditingController masum = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const Drawer(),
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      backgroundColor: Color(0xE83ADE85),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Center(
                child:  Container(
                  height: 280,
                  width: 280,
                  child: Image.asset("assets/robot.png"),
                ),
              ),
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 55,
                color: Color(0xFFD633BC),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 60),
              child: Text(
                "What’s your Name ?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xD34A29CF),
                ),
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey,
              ),
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: masum,
                keyboardType: TextInputType.name,
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Name',
                  hintStyle: TextStyle(fontSize: 35),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // setState(() {
                //   outputText = 'Input: ${_name.text}';
                // });
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondRoute(masum: masum.text)));
              },
              child: Container(
                margin: EdgeInsets.only(top: 100),
                alignment: Alignment.topRight,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(),
                ),
                child: Center(
                    child: Text(
                  "Next",
                  style: TextStyle(fontSize: 25),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// showDialog(
//   context: context,
//   builder: (context) {
//     return AlertDialog(
//       // Retrieve the text the that user has entered by using the
//       // TextEditingController.
//       content: Text(myController.text),
//     );
//   },
// );
