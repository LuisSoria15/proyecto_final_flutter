import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      extendBodyBehindAppBar: false,
      appBar: miAppBar(),
    );
  }

  AppBar miAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Container(
        width: 200,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(72, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(78, 63, 81, 181),
              offset: Offset(-2, 10),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          "Found it!",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: const Color.fromARGB(49, 255, 255, 255),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person, size: 30, color: Colors.white),
          ),
        ),
      ),
      leadingWidth: 60.0,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 2.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ),
        //SizedBox(width: 20),
        Padding(
          padding: EdgeInsets.only(right: 2.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, size: 30.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
