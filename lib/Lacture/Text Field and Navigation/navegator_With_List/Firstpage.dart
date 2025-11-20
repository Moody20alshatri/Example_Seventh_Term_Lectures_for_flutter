import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:term_lecture_mo/Lacture/Text%20Field%20and%20Navigation/navegator_With_List/SecundPage.dart';
import 'package:term_lecture_mo/Models/Models/Userinfo.dart';
class Userinfolist extends StatefulWidget {
   Userinfolist({super.key});
final List<Userinfo> _userinfo = [
  Userinfo(name: "Mohammed", description: "Doctor", age: 40),
  Userinfo(name: "Ahmed", description: "Engineer", age: 32),
  Userinfo(name: "Sara", description: "Teacher", age: 28),
  Userinfo(name: "Fatima", description: "Designer", age: 25),
  Userinfo(name: "Omar", description: "Developer", age: 35),
];

  @override
  State<Userinfolist> createState() => _UserinfolistState();
}

class _UserinfolistState extends State<Userinfolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._userinfo.length,
       itemBuilder: (context, index) {
         return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
           child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfilePage( name: widget._userinfo[index].name,
                  description: widget._userinfo[index].description,
                  age: widget._userinfo[index].age,
                  imagePath: "assets/images/images/wallpaperflare.com_wallpaper.jpg",);
              },));
            },
             child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.indigo,style: BorderStyle.solid,width: 2),
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 0),
                    blurRadius: 6,
                    spreadRadius: 2
                  )
                ]
              ),
              child: Row(
                children: [
                  Container(
                    // width: double.infinity,
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
             
                      color: Colors.blue
                    ),
                    child: Image.asset("assets/images/images/wallpaperflare.com_wallpaper.jpg"),),
             
                   Expanded(
                     child: Container(
                      alignment: Alignment.center,
                       padding: EdgeInsets.all(8.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(widget._userinfo[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color:Colors.indigo)),
                           SizedBox(height: 4),
                           Text(widget._userinfo[index].description),
                           SizedBox(height: 4),
                           Text("Age: ${widget._userinfo[index].age}"),
                         ],
                       ),
                     ),
                   )
                ],
              ),
             ),
           ),
         );
       },
      )
    );
  }
}


