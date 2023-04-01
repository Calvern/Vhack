import 'package:flutter/material.dart';
import 'package:personalitytest/images_and_icons.dart';
import 'package:personalitytest/screens/chat_interface.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: MyWorld(),
    );
  }
}

class MyWorld extends StatelessWidget {
  const MyWorld({super.key});

  static const kDefaultPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Sheila The Singer\n",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text: " Diagnosis: Mild cough, low-grade fever\n\n",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const TextSpan(
                        text:
                            " Apply your knowledge and utilise the \n medical tools provided to treat the patient\n and bring back the exuberance in her \n countenance!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChatInterface()));
                  },
                  style: TextButton.styleFrom(
                      side: const BorderSide(width: 1, color: Colors.grey),
                      minimumSize: const Size(155, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Colors.white,
                      backgroundColor: Colors.black),
                  child: Center(
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.chat_bubble,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(padding: EdgeInsets.only(left: 50.0)),
                        Text(
                          "Talk to the patient",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
