import 'package:flutter/material.dart';

class TextoBox extends StatefulWidget {
  final String texto;

  TextoBox(this.texto);

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
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
