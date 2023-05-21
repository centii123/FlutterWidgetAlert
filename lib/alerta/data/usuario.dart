import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

Map personaFinal = {"nombre": "Sebastian", "edad": 22};

//variables globales
late AnimationController animacionSalidaNoti;
late AnimationController animacionSalidaNotiExito;
var activadorNoti = false;
ValueNotifier Persona = ValueNotifier(personaFinal);

void textoLista(newpersona) {
  Persona.value = newpersona;
}

ValueNotifier<bool> notificacionExito = ValueNotifier(false);

void activadorExito(bool activar) {
  notificacionExito.value = activar;
}
