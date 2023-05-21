
import 'package:alert_widget/alerta/data/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bootstrap_widgets/bootstrap_widgets.dart';

class notificacion extends StatefulWidget {
  const notificacion({super.key});

  @override
  State<notificacion> createState() => _notificacionState();
}

class _notificacionState extends State<notificacion> {
  Map Personacreada = {"nombre": "", "edad": 0};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    "Editar Usuario",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  TextFormField(
                                      onChanged: (value) {
                                        Personacreada["nombre"] = value;
                                        print(Persona);
                                      },
                                      decoration: InputDecoration(
                                        labelText: 'Nombre',
                                      )),
                                  TextFormField(
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        Personacreada["edad"] = value;
                                        print(Persona);
                                      },
                                      decoration: InputDecoration(
                                        labelText: 'Edad',
                                      )),
                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        BootstrapButton(
                                            child: Text("Salir"),
                                            type: BootstrapButtonType.danger,
                                            onPressed: () {
                                              SystemChannels.textInput
                                                  .invokeMethod(
                                                      'TextInput.hide');
                                              Future.delayed(
                                                  Duration(seconds: 1), () {
                                                animacionSalidaNoti.reverse();
                                                activadorNoti = false;
                                                Personacreada = {
                                                  "nombre": "",
                                                  "edad": 0
                                                };
                                              });
                                            }),
                                        BootstrapButton(
                                            child: Text("Agregar"),
                                            type: BootstrapButtonType.primary,
                                            onPressed: () {
                                              //cerrar teclado
                                              SystemChannels.textInput
                                                  .invokeMethod(
                                                      'TextInput.hide');
                                              //temporizador de ejecucion
                                              Future.delayed(
                                                  Duration(seconds: 1), () {
                                                animacionSalidaNoti.reverse();
                                                textoLista(Personacreada);
                                                activadorExito(true);
                                              });

                                              Future.delayed(
                                                  Duration(seconds: 4), () {
                                                animacionSalidaNotiExito
                                                    .reverse();
                                                Future.delayed(
                                                    Duration(seconds: 1), () {
                                                  activadorExito(false);
                                                  Personacreada = {
                                                    "nombre": "",
                                                    "edad": 0
                                                  };
                                                });
                                              });
                                            })
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ))
              ],
            )
          ],
        ));
  }
}
