import 'package:flutter/material.dart';
import 'package:term_lecture_mo/homework3/Home.dart';
import 'package:term_lecture_mo/Lacture/CV/Profile.dart';
import 'package:term_lecture_mo/Lacture/Text%20Field%20and%20Navigation/navegator_With_List/Firstpage.dart';
import 'package:term_lecture_mo/Lacture/%D8%A7%D9%88%D9%84%20%D9%85%D8%AD%D8%A7%D8%B6%D8%B1%D9%87%20%D9%84%D9%85%D9%87%D8%A7/firstLacture.dart';
import 'package:term_lecture_mo/Lacture/%D8%A7%D9%88%D9%84%20%D9%85%D8%AD%D8%A7%D8%B6%D8%B1%D8%A9%20%D9%84%D9%84%D8%B2%D8%A8%D9%8A%D8%B1/solution_error.dart';
import 'package:term_lecture_mo/homework2/one.dart';
import 'package:term_lecture_mo/homework4/Home.dart';

void main() {
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.light,
      ),
      home: HomepageNavi4(),
      // Scaffold(
      //   backgroundColor: Colors.white,
      //   appBar: AppBar(
      //     title: Text("MY CV",style: TextStyle(color: Colors.white),),
      //     centerTitle: true,
      //     backgroundColor: Colors.indigo,
      //     actions:[Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 14),
      //       child: Icon(Icons.menu,color: Colors.white,size: 30,),
      //     )],
      //   ),
      //   body:Userinfolist()
      //    ),
    );
  }
}
