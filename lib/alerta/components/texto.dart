import 'package:flutter/material.dart';

class TextoMotivo extends StatelessWidget {
  const TextoMotivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 15),
                child: Text(
                  "Texto de Inspiración",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 38,
                      fontFamily: 'fantasy'),
                ),
              )
            ],
          ),
          Text(
            "La programación es como un lienzo en blanco, donde las ideas se convierten en realidad con cada línea de código. Cada desafío es una oportunidad para crecer, aprender y superar tus propios límites. No importa cuántas veces encuentres obstáculos en tu camino, recuerda que cada error es un paso más hacia la solución. La programación no solo se trata de escribir código, sino de desatar tu creatividad, resolver problemas y construir un futuro mejor. Mantén la pasión encendida, sigue aprendiendo y nunca subestimes el poder de tu mente para crear algo extraordinario. ¡El mundo está esperando tus innovaciones y tu habilidad para transformar ideas en realidad!",
            style: TextStyle(color: Colors.white, fontSize: 18, wordSpacing: 5),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
