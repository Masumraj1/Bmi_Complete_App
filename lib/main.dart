import 'package:flutter/material.dart';

import 'Firstpage.dart';

void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }

}