import 'package:flutter/material.dart';
import 'package:term_lecture_mo/Lacture/secundLacture.dart';

void main() {
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("This is first App",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          actions:[Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Icon(Icons.shopping_cart,color: Colors.white,size: 30,),
          )],
        ),
        body:
        secundLacture()
         ),
    );
  }
}
