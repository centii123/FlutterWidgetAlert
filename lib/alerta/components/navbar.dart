import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Stack(
        children: [
          Image.asset(
            "assets/ImagenNav.jpg",
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black12, Colors.black])),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/logop.png", width: 60),
                Text(
                  "Pagina Principal Enrique Mera",
                  style: TextStyle(color: Colors.white, fontSize: 23),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
