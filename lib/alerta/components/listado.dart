import 'package:alert_widget/alerta/components/footer.dart';
import 'package:alert_widget/alerta/components/texto.dart';
import 'package:alert_widget/alerta/data/usuario.dart';
import 'package:flutter/material.dart';

class listado extends StatefulWidget {
  const listado({super.key});

  @override
  State<listado> createState() => _listadoState();
}

class _listadoState extends State<listado> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "USUARIO",
                style: TextStyle(
                    color: Colors.purple, fontSize: 50, fontFamily: 'fantasy'),
              ),
            )
          ],
        ),
        ValueListenableBuilder(
          // escucha cambios de ValueNotifier que esta en el archivo usuario.dart
          valueListenable: Persona,
          builder: (context, value, child) {
            //contexto: hace referencia al Widget para que cargue solo ese y no Todo
            //el value: es el valor del texto que lo oge automaticamente
            // el child: es porque va a retornar un hijo ya que solo se escribe cuando se hace child o children y no builder por eso se escribe para que imprima
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Nombre:",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      "${value['nombre']}",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Edad:",
                        style: TextStyle(color: Colors.white, fontSize: 38),
                      ),
                      Text(
                        "${value['edad']}",
                        style: TextStyle(color: Colors.white, fontSize: 32),
                      )
                    ],
                  ),
                ),
                TextoMotivo(),
                footer()
              ],
            );
          },
        ),
      ],
    ));
  }
}
/*Container(
      child: Text(
        "${texto.value}",
        style: TextStyle(color: Colors.white),
      ),
    ) */
