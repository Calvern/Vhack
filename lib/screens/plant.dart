import 'package:flutter/material.dart';
import 'package:personalitytest/screens/chat_interface.dart';
import 'package:personalitytest/screens/home_page.dart';


class Plant extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      backgroundColor: Colors.white,
      body: Container(
        child: GestureDetector(
          child: Image.asset("assets/images/plant_screen.png"
          ),
          onTap: (){Navigator.of(context)
              .push(
              MaterialPageRoute(
                  builder: (context)=>HomePage()
              )
          );},
        ),
        alignment: Alignment.center,
      ),

    );
  }}
