
import 'package:alert_widget/alerta/components/Capa2.dart';
import 'package:alert_widget/alerta/components/listado.dart';
import 'package:alert_widget/alerta/components/navbar.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Navbar(),
                    listado(),
                  ],
                ),
              ),
              Capa2()
            ],
          ),
        ));
  }
}
