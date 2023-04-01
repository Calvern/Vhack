import 'package:flutter/material.dart';

import 'package:personalitytest/screens/careerchoices.dart';

class IdentityResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/identityresult.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.0, 0.95),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CareerSelection()));
            },
            child: Text(
              "Select your career",
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: "K2D",
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              minimumSize: Size(264, 54),
            ),
          ),
        )
      ]),
    );
  }
}
