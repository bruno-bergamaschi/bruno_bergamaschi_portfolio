import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SobreMim extends StatefulWidget {
  SobreMim({Key? key}) : super(key: key);

  @override
  _SobreMimState createState() => _SobreMimState();
}

class _SobreMimState extends State<SobreMim> {
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

  Widget imagemContato(String texto, double width, double height) {
    return Image.asset(
      texto,
      width: width,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBox,
        title: Text('Sobre mim'),
        centerTitle: true,
      ),
      body: Container(
        color: darkBox,
        child: ListView(
          children: [
            titulo('Quem sou eu?'),
            Container(
              decoration: BoxDecoration(
                color: lighBox,
                border: Border(),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  textoBox('Olá,'),
                  textoBox(
                      'Sou o Bruno Bergamaschi, tenho 28 ano e moro em Porto Alegre - RS. Vivo com minha esposa Aline (meu tesourinho) e com nossa doguinha dora <3'),
                  textoBox(
                      'Sou apaixonado por programação desde 2013, quando iniciei uma graduação de Jogos Digitais (levado por uma outra paixão, jogar). Acabei não concluído a graduação, porém foi o suficiente para despertar um sonho (ser um desenvolvedor).'),
                  textoBox(
                      'Esse sonho foi guardado em uma caixinha por questões de escolha de trilhas na época, porém em 2019 retornei os estudos e desde então venho em busca de realizar.'),
                  textoBox(
                      'Encontrei a SoulCode (por indicação da minha esposa) e agora sigo na busca da realização desse sonho.'),
                  textoBox('Prazer :D'),
                ],
              ),
            ),
            titulo('Metas para o futuro'),
            Container(
              decoration: BoxDecoration(
                color: lighBox,
                border: Border(),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  textoBox('- Concluir o curso da SoulCode Academy'),
                  textoBox('- Ingressar no mercado de desenvolvimento'),
                  textoBox(
                      '- Retornar à graduação, para Análise e Desenvolvimento de Sistemas'),
                  textoBox('- Iniciar um curso de inglês'),
                  textoBox(
                      '- Me tornar um bom desenvolvedor, com inglês razoável para conseguir morar no exterior'),
                ],
              ),
            ),
            titulo('Contatos'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: imagemContato(
                      'assets/images/contatos/github-efeito.png',
                      80,
                      80,
                    ),
                    onTap: () => launch('https://github.com/bruno-bergamaschi'),
                  ),
                  InkWell(
                    child: imagemContato(
                      'assets/images/contatos/linkedin-icon-efeito.png',
                      80,
                      80,
                    ),
                    onTap: () =>
                        launch('https://www.linkedin.com/in/brunobergamaschi/'),
                  ),
                  InkWell(
                    child: imagemContato(
                      'assets/images/contatos/instagram-icon-efeito.png',
                      80,
                      80,
                    ),
                    onTap: () =>
                        launch('https://www.instagram.com/brunobergamaschi_/'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
