import 'package:alert_widget/alerta/components/alerta.dart';
import 'package:alert_widget/alerta/components/notificacion.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import '../data/usuario.dart';

class Capa2 extends StatefulWidget {
  const Capa2({super.key});

  @override
  State<Capa2> createState() => _Capa2State();
}

class _Capa2State extends State<Capa2> {
  void toggleActivation() {
    setState(() {
      activadorNoti = !activadorNoti;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 30, bottom: 50),
                child: FloatingActionButton(
                    backgroundColor: Colors.purple,
                    child: Icon(BootstrapIcons.person_gear),
                    onPressed: () {
                      setState(() {
                        activadorNoti = true;
                      });
                    }),
              ),
            )
          ],
        ),
        Visibility(
            visible: activadorNoti,
            child: FadeInDownBig(
              controller: (animatione) => animacionSalidaNoti = animatione,
              child: notificacion(),
            )),
        ValueListenableBuilder(
            valueListenable: notificacionExito,
            builder: (context, value, child) {
              return Visibility(
                  visible: notificacionExito.value,
                  child: FadeInDownBig(
                    controller: (controler) =>
                        animacionSalidaNotiExito = controler,
                    child: alerta(),
                  ));
            })
      ],
    );
  }
}
