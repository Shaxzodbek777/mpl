

import 'package:flutter/material.dart';
import 'package:mpl/Pages/HomePage.dart';
import 'package:mpl/Pages/RoyxatdanOtish.dart';

class Kirish extends StatefulWidget {
  const Kirish({super.key});
static final String id = "Kirish";
  @override
  State<Kirish> createState() => _KirishState();
}






class _KirishState extends State<Kirish> {


  var emailController = TextEditingController();
  var paswordController = TextEditingController();

  void _doSignIn(){
    String email = emailController.text.toString().trim();
    String pasword = paswordController.text.toString().trim();
    if (email.isEmpty || pasword.isEmpty) return;

    Navigator.pushNamed(context as BuildContext, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Expanded(
        child: Center(
          child: Column(
            children: [
              Text("MY LIFE", style:TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),),
              Text("PLANNER", style: TextStyle(color: Colors.red, fontSize: 50, fontWeight: FontWeight.bold),),
              SizedBox(height: 121,),
              Text("Kirish", style: TextStyle(color: Colors.black, fontSize: 42, fontWeight: FontWeight.bold),),
              SizedBox(height: 46,),
              Container(
                  height: 64,
                  width: 357,
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F4FF)
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                    hintText: "      Email manzilingiz",
                    border: InputBorder.none,

                  ),
                  )
              ),
              SizedBox(height: 10,),
              Container(
                  height: 64,
                  width: 357,
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F4FF)
                  ),
                  child: TextField(
                    controller: paswordController,
                    decoration: InputDecoration(
                    hintText: "      Parolingiz",
                    border: InputBorder.none,

                  ),
                  )
              ),
              SizedBox(height: 30,),
              Container(
                height: 60,
                width: 357,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: _doSignIn,
                    child: Text("Kirish", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              SizedBox(height: 72,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hisobingiz yo'qmi?",style: TextStyle(color: Colors.black),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RoyxatdanOtish.id);
                    },
                    child: Text(" Ro'yxatdan o'tish", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
