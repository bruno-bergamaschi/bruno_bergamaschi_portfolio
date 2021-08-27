import 'package:bruno_bergamaschi_portfolio/pages/portfolio.dart';
import 'package:bruno_bergamaschi_portfolio/pages/sobre_mim.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(41, 50, 65, 1),
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(100),
                      bottom: Radius.circular(100),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/apresentacao/me.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Text(
                    'Olá, eu sou o Bruno \\o',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(224, 251, 252, 1),
                      border: Border(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                      'Bem-vindo ao meu portfólio. Aqui você poderá saber um pouco mais sobre mim e minha jornada no mundo da tecnologia.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Portfolio()),
                        );
                      },
                      child: Text('Porfolio'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffee6c4d)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SobreMim()),
                        );
                      },
                      child: Text('Sobre mim'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffee6c4d)),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
