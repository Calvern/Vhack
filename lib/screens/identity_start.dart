import 'package:flutter/material.dart';
import 'package:personalitytest/screens/identity_test.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children:<Widget> [

          Text(
            "Who you are..?",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontFamily: 'K2D',
                fontWeight: FontWeight.w400

            ),
          ),

            Align(
            alignment: Alignment.center,
          child:Image.asset("assets/images/starttest.png"),
          ),
          ElevatedButton(

              onPressed: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                        builder: (context)=>QuizScreen()
                    )
                );
              },
              child:Text(
                "IDENTITY TEST",
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'K2D',
                  fontWeight: FontWeight.w400,
                ),
              ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
              ),
              backgroundColor: Colors.deepPurple,
              elevation: 0,
              minimumSize: Size(264, 54)
            ),
          ),
           ],
      ),
    );
  }
}