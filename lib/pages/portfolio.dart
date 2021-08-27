import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  Color lighBox = Color.fromRGBO(224, 251, 252, 1);
  Color darkBox = Color.fromRGBO(41, 50, 65, 1);
  Color lighText = Color.fromRGBO(224, 251, 252, 1);
  Color darkText = Color.fromRGBO(41, 50, 65, 1);
  Color grayColor = Color.fromRGBO(51, 53, 51, 1);

  Widget textoBox(String texto) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(color: darkText, fontSize: 16),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget titulo(String texto) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          color: grayColor,
          child: Text(
            texto,
            style: TextStyle(
              color: lighText,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBox,
        title: Text('Tecnologias'),
        centerTitle: true,
      ),
      body: Container(
        color: darkBox,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Center(child: Text('$index')),
                color: Colors.red,
              );
            }),
      ),
    );
  }
}
