import 'package:flutter/material.dart';
import 'package:personalitytest/screens/home_page.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    double kDefaultPadding = 15.0;
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: SizedBox(
        height: size.height * 0.65,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.01),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: const Icon(Icons.arrow_back)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, elevation: 0),
                      child:
                          const IconCard(icon: "assets/images/bpmachine.jpg"),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                  child: AlertDialog(
                                title: Text("Blood Pressure: 118/75 (Normal)"),
                              ));
                            });
                      },
                    ),
                    const IconCard(icon: "assets/images/capsule.jpg"),
                    const IconCard(icon: "assets/images/stethoscope.jpg"),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, elevation: 0),
                      child:
                          const IconCard(icon: "assets/images/thermometer.jpg"),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                  child: AlertDialog(
                                title: Text("Temperature : 38.2°C (High)"),
                              ));
                            });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.7,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: Colors.blueGrey.withOpacity(0.20),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/patient.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
