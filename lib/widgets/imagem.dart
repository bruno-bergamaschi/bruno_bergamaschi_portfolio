import 'package:flutter/material.dart';

class Imagem extends StatefulWidget {
  final String texto;
  final double height;

  Imagem(this.texto, this.height);

  @override
  _ImagemState createState() => _ImagemState();
}

class _ImagemState extends State<Imagem> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.texto,
      height: widget.height,
    );
  }
}
