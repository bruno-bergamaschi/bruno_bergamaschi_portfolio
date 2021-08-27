import 'package:flutter/material.dart';

class TextoBox extends StatefulWidget {
  final String texto;
  final Color color;

  TextoBox(this.texto, this.color);

  @override
  _TextoBoxState createState() => _TextoBoxState();
}

class _TextoBoxState extends State<TextoBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        widget.texto,
        style: TextStyle(color: widget.color, fontSize: 16),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
