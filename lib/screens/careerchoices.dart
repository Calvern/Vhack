import 'package:flutter/material.dart';

import 'package:personalitytest/screens/career_rsult.dart';

class CareerSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "These careers suit you!",
                style: TextStyle(
                    color: Colors.black, fontFamily: "K2D", fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "Select your career",
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "K2D",
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.0,
            ),
            GestureDetector(
                child: Image.asset("assets/images/Doctor.png"),
              onTap: (){Navigator.of(context)
                  .push(
                  MaterialPageRoute(
                      builder: (context)=>CareerResult()

                  )
              );},

            ),
            Image.asset("assets/images/Software.png"),
            Image.asset("assets/images/Pharmacist.png"),
            Image.asset("assets/images/Mechanical.png"),
          ]),
        ),
      ),
    );
  }
}
