import 'package:flutter/material.dart';
import 'package:personalitytest/screens/VideoPlayer.dart';
import 'package:personalitytest/screens/myworld.dart';
import 'package:personalitytest/screens/plant.dart';
import 'package:personalitytest/screens/profile.dart';
import 'package:personalitytest/screens/profile_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/homepage.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.3),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const Text(
                        "CALVERN THE DOCTOR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfilePage()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          margin: const EdgeInsets.symmetric(horizontal: 30),


                          height: 122,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/homepagestatusbar.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dive into the world of...",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Body()));
                            },
                            child: makeItem(
                                image: "assets/images/Hospital.jpg",
                                title: 'Healthcare    (My World)'),
                          ),
                          makeItem(
                              image: "assets/images/computer.jpg",
                              title: 'Science & Technology'),
                          makeItem(image: "assets/images/music.jpg", title: 'Art'),
                          makeItem(
                              image: "assets/images/humanservice.jpg",
                              title: 'Human Service'),
                          makeItem(
                              image: "assets/images/agriculture.jpg",
                              title: 'Agriculture')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Invest yourself",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VideoDemo()));
                              },
                              child: makeItem(
                                  image: "assets/images/edu.jpg",
                                  title: 'School of Medicine'),
                            ),

                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ProfileList()));
                            },
                            child: makeItem(
                                image: "assets/images/mentorship.jpg",
                                title: 'Mentorship'),
                          ),
                          makeItem(
                              image: "assets/images/MockInterview.jpg",
                              title: 'Mock Interviews'),
                          makeItem(
                              image: "assets/images/internship.jpg",
                              title: 'Internship'),
                          makeItem(
                              image: "assets/images/networking.jpg",
                              title: 'Networking'),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.person_2),
                  title: const Text('Profile'),
                  onTap: () =>
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  )),
                ),
                ListTile(
                  leading: const Icon(Icons.person_2),
                  title: const Text('My Environment'),
                  onTap: () =>
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>  Plant(),
                      )),
                ),
                ListTile(
                  leading: const Icon(Icons.restart_alt),
                  title: const Text('Reset career'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.attach_money),
                  title: const Text('Subscription plans'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.notifications),
                  title: const Text('Notifications'),
                  onTap: () {},
                ),
                const Divider(color: Colors.black),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Log Out'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.3),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
