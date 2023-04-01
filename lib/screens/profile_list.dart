import 'package:flutter/material.dart';


class ProfileList extends StatefulWidget {
  const ProfileList({super.key});


  @override
  State<ProfileList> createState() => _ProfileListState();
}


class _ProfileListState extends State<ProfileList> {
  List names = [
    "AI John Doe",
    "AI Stephen Chua",
    "Emma Soon \$ ",
    "Mark Kang \$ ",
    "Tony Leung \$ ",
    "Sharon Watson \$ "
  ];
  List roles = [
    "Dermatologist",
    "Pediatrician",
    "Neurologist",
    "Psychologist",
    "Radiologist",
    "Cardiologist"
  ];
  List profilepic = [
    "assets/images/ai_mentor.jpg",
    "assets/images/ai_mentor2.jpg",
    "assets/images/mentor2.jpg",
    "assets/images/mentor1.jpg",
    "assets/images/mentor3.jpg",
    "assets/images/mentor4.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mentors"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.deepPurple[100],
        child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 55.0,
                          height: 55.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.deepPurple,
                            backgroundImage: AssetImage(profilepic[index]),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(names[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text(roles[index],
                                  style: TextStyle(color: Colors.grey)),
                            ])
                      ],
                    ),
                    Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: TextButton(
                          onPressed:(){},
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text("Book", style: TextStyle(color: Colors.white)),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




