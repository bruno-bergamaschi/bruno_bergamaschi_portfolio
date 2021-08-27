import 'package:flutter/material.dart';

class Titulo extends StatefulWidget {
  final String texto;
  final Color corBox;
  final Color corTexto;

  Titulo(this.texto, this.corBox, this.corTexto);

  @override
  _TituloState createState() => _TituloState();
}

class _TituloState extends State<Titulo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          color: widget.corBox,
          child: Text(
            widget.texto,
            style: TextStyle(
              color: widget.corTexto,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
