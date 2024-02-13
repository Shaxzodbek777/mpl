import 'package:flutter/material.dart';
class RoyxatdanOtish extends StatefulWidget {
  const RoyxatdanOtish({super.key});
static final String id = "RoyxatdanOtish";
  @override
  State<RoyxatdanOtish> createState() => _RoyxatdanOtishState();
}

class _RoyxatdanOtishState extends State<RoyxatdanOtish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Center(
          child: Column(
            children: [
              Text("MY LIFE")
            ],
          ),
        ),
      ),
    );
  }
}
