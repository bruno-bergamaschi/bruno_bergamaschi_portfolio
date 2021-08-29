import 'package:flutter/material.dart';

class Titulo extends StatefulWidget {
  final String texto;

  Titulo(this.texto);

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
          color: Theme.of(context).bannerTheme.backgroundColor,
          child: Text(
            widget.texto,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
