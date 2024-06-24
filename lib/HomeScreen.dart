import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 1, 67),
      appBar: AppBar(
        title: const Text(
          "Elden Ring",
          style: TextStyle(
              fontFamily: 'Teko',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white),
        ),
        toolbarHeight: 30,
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://static1.dualshockersimages.com/wordpress/wp-content/uploads/2022/11/raging-wolf-armor-set-header.jpg'),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Kazuma Miya",
              style: TextStyle(
                  fontSize: 25, color: Colors.white, fontFamily: 'Teko')),
          const Text("'MAIDENLESS TARNISHED'",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  letterSpacing: 3,
                  fontFamily: 'Teko')),
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
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "pathToPlayScreen");
              },
              child: Container(
                height: 40,
                color: Colors.deepPurple[900],
                child: const Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("+91-98XXX-XXXXX",
                        style: TextStyle(
                          color: Colors.white,
                        ))
                  ],
                ),
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
              color: Colors.deepPurple[900],
              child: const Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "elden.ring@fromsoft.com",
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
              Navigator.pushNamed(context, 'pathToPlayScreen');
            },
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue)),
            child: const Text(
              "Move to Hunter's Dream",
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
