import 'package:bruno_bergamaschi_portfolio/widgets/imagem.dart';
import 'package:bruno_bergamaschi_portfolio/widgets/texto_box.dart';
import 'package:bruno_bergamaschi_portfolio/widgets/titulo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatefulWidget {
  Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  Color bg = Color.fromRGBO(45, 49, 66, 1);
  Color grayBox = Color.fromRGBO(191, 192, 192, 1);
  Color lightBox = Color.fromRGBO(255, 255, 255, 1);
  Color darkText = Color.fromRGBO(45, 49, 66, 1);
  Color lightText = Color.fromRGBO(255, 255, 255, 1);
  Color tituloColor = Color.fromRGBO(239, 131, 84, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg,
        title: Text('Portfolio'),
        centerTitle: true,
      ),
      body: Container(
        color: bg,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Titulo('Quem sou eu?', tituloColor, darkText),
                Container(
                  decoration: BoxDecoration(
                    color: lightBox,
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextoBox('Olá,', darkText),
                      TextoBox(
                          'Sou o Bruno Bergamaschi, tenho 28 ano e moro em Porto Alegre - RS. Vivo com minha esposa Aline (meu tesourinho) e com nossa doguinha dora <3',
                          darkText),
                      TextoBox(
                          'Sou apaixonado por programação desde 2013, quando iniciei uma graduação de Jogos Digitais (levado por uma outra paixão, jogar). Acabei não concluído a graduação, porém foi o suficiente para despertar um sonho (ser um desenvolvedor).',
                          darkText),
                      TextoBox(
                          'Esse sonho foi guardado em uma caixinha por questões de escolha de trilhas na época, porém em 2019 retornei os estudos e desde então venho em busca de realizar.',
                          darkText),
                      TextoBox(
                          'Encontrei a SoulCode (por indicação da minha esposa) e agora sigo na busca da realização desse sonho.',
                          darkText),
                      TextoBox('Prazer :D', darkText),
                    ],
                  ),
                ),
                Titulo('Metas para o futuro', tituloColor, darkText),
                Container(
                  decoration: BoxDecoration(
                    color: lightBox,
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextoBox(
                          '- Concluir o curso da SoulCode Academy', darkText),
                      TextoBox('- Ingressar no mercado de desenvolvimento',
                          darkText),
                      TextoBox(
                          '- Retornar à graduação, para Análise e Desenvolvimento de Sistemas',
                          darkText),
                      TextoBox('- Iniciar um curso de inglês', darkText),
                      TextoBox(
                          '- Me tornar um bom desenvolvedor, com inglês razoável para conseguir morar no exterior',
                          darkText),
                    ],
                  ),
                ),
                Titulo('Tecnologias', tituloColor, darkText),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: Row(
                        children: [
                          Imagem('assets/images/tecnologias/html.png', 120),
                          Imagem('assets/images/tecnologias/css.png', 120),
                          Imagem('assets/images/tecnologias/js.png', 120),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          Imagem(
                              'assets/images/tecnologias/bootstrap.png', 120),
                          Imagem('assets/images/tecnologias/react.png', 120),
                          Imagem('assets/images/tecnologias/dart.png', 120),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          Imagem('assets/images/tecnologias/flutter.png', 120),
                          Imagem('assets/images/tecnologias/firebase.png', 120),
                          Imagem('assets/images/tecnologias/git.png', 120),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                      child: Row(
                        children: [
                          Imagem('assets/images/tecnologias/github.png', 120),
                        ],
                      ),
                    ),
                  ],
                ),
                //PROJETOS
                Titulo('Projetos', tituloColor, darkText),
                Container(
                  decoration: BoxDecoration(
                    color: lightBox,
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Imagem('assets/images/projetos/soul-cine.png', 100),
                      TextoBox(
                          'Projeto web desenvolvido para praticar as tecnologias estudadas na SoulCode Academy.',
                          darkText),
                      InkWell(
                        child:
                            TextoBox('Ver projeto completo', Colors.blueAccent),
                        onTap: () {
                          launch(
                              'https://github.com/bruno-bergamaschi/Projeto-SoulCine');
                        },
                      ),
                      TextoBox('Tecnologias utilizadas:', darkText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Imagem('assets/images/tecnologias/html.png', 45),
                          Imagem('assets/images/tecnologias/css.png', 45),
                          Imagem('assets/images/tecnologias/git.png', 45),
                          Imagem('assets/images/tecnologias/github.png', 45),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: lightBox,
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Imagem('assets/images/projetos/calc-tudo.png', 100),
                      TextoBox(
                          'Projeto web desenvolvido para praticar as tecnologias estudadas na SoulCode Academy.',
                          darkText),
                      InkWell(
                        child:
                            TextoBox('Ver projeto completo', Colors.blueAccent),
                        onTap: () {
                          launch(
                              'https://bruno-bergamaschi.github.io/projetoJavascript-calcTudo/');
                        },
                      ),
                      TextoBox('Tecnologias utilizadas:', darkText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Imagem('assets/images/tecnologias/html.png', 45),
                          Imagem('assets/images/tecnologias/css.png', 45),
                          Imagem('assets/images/tecnologias/js.png', 45),
                          Imagem('assets/images/tecnologias/git.png', 45),
                          Imagem('assets/images/tecnologias/github.png', 45),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: lightBox,
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Imagem(
                          'assets/images/projetos/lucas-cardoso-nutricionista.png',
                          100),
                      TextoBox(
                          'Projeto web desenvolvido em equipe, para um cliente real em parceria com a SoulCode.',
                          darkText),
                      InkWell(
                        child:
                            TextoBox('Ver projeto completo', Colors.blueAccent),
                        onTap: () {
                          launch(
                              'https://bruno-bergamaschi.github.io/projetoBootstrap/');
                        },
                      ),
                      TextoBox('Tecnologias utilizadas:', darkText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Imagem('assets/images/tecnologias/html.png', 45),
                          Imagem('assets/images/tecnologias/css.png', 45),
                          Imagem('assets/images/tecnologias/js.png', 45),
                          Imagem('assets/images/tecnologias/bootstrap.png', 45),
                          Imagem('assets/images/tecnologias/git.png', 45),
                          Imagem('assets/images/tecnologias/github.png', 45),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: lightBox,
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Imagem('assets/images/projetos/moto-taxi-cooperativa.png',
                          130),
                      TextoBox(
                          'Projeto mobile desenvolvido em equipe, para um cliente real em parceria com a SoulCode.',
                          darkText),
                      InkWell(
                        child:
                            TextoBox('Ver projeto completo', Colors.blueAccent),
                        onTap: () {
                          launch(
                              'https://github.com/bruno-bergamaschi/appMotoTaxi-Cooperativa');
                        },
                      ),
                      TextoBox('Tecnologias utilizadas:', darkText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Imagem('assets/images/tecnologias/js.png', 45),
                          Imagem('assets/images/tecnologias/react.png', 45),
                          Imagem('assets/images/tecnologias/firebase.png', 45),
                          Imagem('assets/images/tecnologias/git.png', 45),
                          Imagem('assets/images/tecnologias/github.png', 45),
                        ],
                      )
                    ],
                  ),
                ),
                //CONTATOS
                Titulo('Contatos', tituloColor, darkText),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Imagem(
                          'assets/images/contatos/github-efeito.png',
                          80,
                        ),
                        onTap: () =>
                            launch('https://github.com/bruno-bergamaschi'),
                      ),
                      InkWell(
                        child: Imagem(
                          'assets/images/contatos/linkedin-icon-efeito.png',
                          80,
                        ),
                        onTap: () => launch(
                            'https://www.linkedin.com/in/brunobergamaschi/'),
                      ),
                      InkWell(
                        child: Imagem(
                          'assets/images/contatos/instagram-icon-efeito.png',
                          80,
                        ),
                        onTap: () => launch(
                            'https://www.instagram.com/brunobergamaschi_/'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
