import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    required this.icon,
    super.key,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    double kDefaultPadding = 20.0;
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: Colors.blueGrey.withOpacity(0.2),
          ),
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: Image(image: AssetImage(icon)),
    );
  }
}
