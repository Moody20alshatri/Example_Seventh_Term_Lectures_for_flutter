import 'package:flutter/material.dart';

class Homepage4 extends StatelessWidget {
   Homepage4({super.key});
 final TextEditingController Controller1 = TextEditingController();
 final TextEditingController Controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  backgroundColor: Colors.white, 
   body: Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(height: 150,),
                  TextField(
                    controller: Controller1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          style: BorderStyle.solid,
                          // strokeAlign: BorderSide.strokeAlignCenter,
                        )
                      )
                    ),
                  ),
                  SizedBox(height: 50,),
                  TextField(
                    controller: Controller2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          style: BorderStyle.solid,
                          // strokeAlign: BorderSide.strokeAlignCenter,
                        )
                      )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Controller2.text = Controller1.text;
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      child: Center(
                        child: Text("ارسال القيمة الى textfield",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
          ],),
      ),
    ),
   ),
   );

  }
}
