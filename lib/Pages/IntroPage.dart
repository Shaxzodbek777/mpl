import 'package:flutter/material.dart';
import 'package:mpl/Pages/RoyxatdanOtish.dart';
import 'kirish.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});
static  final String id = "IntroPage";
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("MY LIFE", style: TextStyle(color: Colors.black, fontSize: 50, fontFamily: "MonsBold", fontWeight: FontWeight.bold),),
            Text("PLANNER", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontFamily: "MonsBold", fontSize: 50),),
            SizedBox(height: 250,),
            Text("Anytime and",style: TextStyle(fontSize: 24, fontFamily: "MonsBold", fontWeight: FontWeight.bold),),
            Text(" Anywhere.", style: TextStyle(fontSize: 24, fontFamily: "MonsBold", fontWeight: FontWeight.bold),),
            Text("Husan Mamasaidov"),
            SizedBox(height: 54,),
            Row(
              children: [
                SizedBox(width: 36,),
                Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                  ),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RoyxatdanOtish.id);
                      },
                      child: Center(
                        child: Text("Registor", style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
                Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
                  ),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, Kirish.id);
                      },
                      child: Center(
                        child: Text("Sign in", style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
