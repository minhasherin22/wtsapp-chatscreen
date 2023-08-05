import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class SplashPage extends StatefulWidget {
  SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var images = [
    "assets/person1.jpeg",
    "assets/person2.jpeg",
    "assets/person3.jpeg",
    "assets/person4.jpeg",
    "assets/person5.jpeg",
    "assets/person6.jpeg",
    "assets/person7.jpeg",
    "assets/person8.jpeg",
    "assets/person9.jpeg",
    "assets/person10.jpeg"
  ];
  var name = [
    "Andriya",
    "Salomi",
    "Ayisha",
    "Olivia",
    "Emma",
    "Charlotte",
    "Amelia",
    "Sophia",
    "Mia",
    "Isabella"
  ];
  var msgs = [
    "heyy",
    "hello dear",
    "how is your day",
    "whats your plan",
    "hello",
    "feel good",
    "hmm",
    "okay",
    "good one",
    "its okay"
  ];
  var time = [
    "12.30 AM",
    "12.25 AM",
    "12.00 AM",
    "11.50 PM",
    "1.00 PM",
    "Yesterday",
    "Yesterday",
    "Yesterday",
    "12/03/2022",
    "20/02/2023"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "WhatsApp",
          style: TextStyle(fontSize: 22),
        ),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("New group"),
              ),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings")),
            ];
          })
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(images[index]),
                  ),
                  title: Text(name[index]),
                  subtitle: Text(msgs[index]),
                  trailing: Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(time[index]),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          minRadius: 5,
                          maxRadius: 10,
                          child: Text("2"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
