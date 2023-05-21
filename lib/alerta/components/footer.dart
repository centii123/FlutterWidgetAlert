

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class footer extends StatelessWidget {
  const footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      margin: EdgeInsets.only(top: 25),
      width: double.infinity,
      color: const Color.fromARGB(255, 83, 83, 83),
      child: Column(
        children: [
          Text("Derechos reservados © 2023",
              style:
                  TextStyle(color: Colors.white, fontSize: 20, wordSpacing: 5)),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(BootstrapIcons.facebook, color: Colors.blue, size: 35),
                Icon(BootstrapIcons.youtube, color: Colors.red, size: 35),
                Icon(BootstrapIcons.twitch, color: Colors.purple, size: 35),
                Icon(BootstrapIcons.twitter, color: Colors.blue, size: 35),
              ],
            ),
          )
        ],
      ),
    );
  }
}
