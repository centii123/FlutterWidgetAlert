import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_widgets/bootstrap_widgets.dart';

class alerta extends StatelessWidget {
  const alerta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 125),
        child: BootstrapAlert(
          child: Text("Usuario Editado Con Exitoooo!!"),
          type: BootstrapAlertType.success,
        ),
      ),
    );
  }
}
