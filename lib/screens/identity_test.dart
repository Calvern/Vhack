import 'package:flutter/material.dart';
import 'package:personalitytest/screens/identity_result.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Identity Test",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "K2D",
                  color: Colors.black,
                ),
              ),
              Text(
                "Select the answers based on how well each statement describes you",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "K2D",
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset("assets/images/testoptions.png"),
              Image.asset("assets/images/ProgressBar0%.png"),
              Container(
                width: 370,
                child: Column(children: [
                  Text(
                    "Getting others to support my ideas is something I am great at",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "K2D",
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.red[600],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.amber[600],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.yellow[400],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.lightGreenAccent[200],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.green[700],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    height: 50,

                  ),
                  Text(
                    "You are more comfortable in making logical judgements",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "K2D",
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.red[600],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.amber[600],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.yellow[400],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.lightGreenAccent[200],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.green[700],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    height: 50,
                  ),
                  Text(
                    "You are more interested in what is possible instead of what is actual",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "K2D",
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.red[600],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.amber[600],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.yellow[400],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.lightGreenAccent[200],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {Navigator.of(context)
                            .push(
                            MaterialPageRoute(
                                builder: (context)=>IdentityResult()
                            )
                        );},
                        child: Text(""),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.green[700],
                          elevation: 3,
                          minimumSize: Size(50, 50),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    height: 50.0,
                  ),
                ]),
              ),

            ]));
  }
}
