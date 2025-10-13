
import 'package:flutter/material.dart';

class firstLacture extends StatelessWidget {
  const firstLacture({ super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        Box(colro: Colors.teal,title: "First and Last Task",),
        Box(colro: Colors.indigo[300]!,title: "First and Last Task",),
        Box(colro: Colors.grey[600]!,title: "First and Last Task",),
           ] );
  }
}
class Box extends StatelessWidget {
 final Color colro;
 final String title;
  const Box({ required this.colro,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 500,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: colro,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),))
    );
  }
}
