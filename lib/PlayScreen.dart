import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 70, 164),
      appBar: AppBar(
        title: const Text(
          "BloodBorne",
          style: TextStyle(
              fontFamily: 'Playwrite',
              fontSize: 15,
              color: Colors.white,
              letterSpacing: 1,
              fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 30,
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2020/09/Bloodborne-Lady-Maria.jpg"),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Kazuma Miya",
              style: TextStyle(
                  fontSize: 15, color: Colors.white, fontFamily: 'Playwrite')),
          const SizedBox(
            height: 15,
          ),
          const Text("'BLOOD HUNTER'",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 3,
                  fontFamily: 'Playwrite')),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Divider(
              thickness: 1,
              height: 30,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              height: 40,
              color: Colors.lightBlue,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 25, 1, 67),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "+91-98XXX-XXXXX",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
            child: Container(
              height: 40,
              color: Colors.lightBlue,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 25, 1, 67),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "bloodborne@fromsoft.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 25, 1, 67))),
            child: const Text(
              "Move to Limgrave",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
