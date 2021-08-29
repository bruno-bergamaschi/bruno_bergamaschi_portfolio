import 'package:bruno_bergamaschi_portfolio/widgets/change_theme_button_widget.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          'Portfólio',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Titulo('Quem sou eu?'),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextoBox('Olá,'),
                      TextoBox(
                        'Sou o Bruno Bergamaschi, tenho 28 anos e moro em Porto Alegre - RS com minha esposa Aline (meu tesourinho) e com nossa doguinha dora <3',
                      ),
                      TextoBox(
                        'Apaixonado por programação, estou na trilha para me tornar um desenvolvedor.',
                      ),
                      TextoBox(
                        'Estudante de Front-end desde 2019 e atualmente aluno da SoulCode Academy na turma de Front-end e Mobile.',
                      ),
                      TextoBox('Prazer :D'),
                    ],
                  ),
                ),
                Titulo('Metas para o futuro'),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextoBox('- Concluir o curso da SoulCode Academy'),
                      TextoBox(
                        '- Ingressar no mercado de desenvolvimento',
                      ),
                      TextoBox(
                        '- Retornar à graduação, para Análise e Desenvolvimento de Sistemas',
                      ),
                      TextoBox('- Iniciar um curso de inglês'),
                      TextoBox(
                        '- Me tornar um bom desenvolvedor, com inglês razoável para conseguir morar no exterior',
                      ),
                    ],
                  ),
                ),
                Titulo('Tecnologias'),
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
                Titulo('Projetos'),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
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
                          'Projeto web desenvolvido para praticar as tecnologias estudadas na SoulCode Academy.'),
                      ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://github.com/bruno-bergamaschi/Projeto-SoulCine');
                        },
                        child: Text('Ver projeto completo'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).buttonColor),
                        ),
                      ),
                      TextoBox('Tecnologias utilizadas:'),
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
                    color: Theme.of(context).cardColor,
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
                          'Projeto web desenvolvido para praticar as tecnologias estudadas na SoulCode Academy.'),
                      ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://bruno-bergamaschi.github.io/projetoJavascript-calcTudo/');
                        },
                        child: Text('Ver projeto completo'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).buttonColor),
                        ),
                      ),
                      TextoBox('Tecnologias utilizadas:'),
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
                    color: Theme.of(context).cardColor,
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
                          'Projeto web desenvolvido em equipe, para um cliente real em parceria com a SoulCode.'),
                      ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://bruno-bergamaschi.github.io/projetoBootstrap/');
                        },
                        child: Text('Ver projeto completo'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).buttonColor),
                        ),
                      ),
                      TextoBox('Tecnologias utilizadas:'),
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
                    color: Theme.of(context).cardColor,
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
                          'Projeto mobile desenvolvido em equipe, para um cliente real em parceria com a SoulCode.'),
                      ElevatedButton(
                        onPressed: () {
                          launch(
                              'https://github.com/bruno-bergamaschi/appMotoTaxi-Cooperativa');
                        },
                        child: Text('Ver projeto completo'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).buttonColor),
                        ),
                      ),
                      TextoBox('Tecnologias utilizadas:'),
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
                Titulo('Contatos'),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Imagem(
                          'assets/images/contatos/github-icon.png',
                          80,
                        ),
                        onTap: () =>
                            launch('https://github.com/bruno-bergamaschi'),
                      ),
                      InkWell(
                        child: Imagem(
                          'assets/images/contatos/linkedin-icon.png',
                          80,
                        ),
                        onTap: () => launch(
                            'https://www.linkedin.com/in/brunobergamaschi/'),
                      ),
                      InkWell(
                        child: Imagem(
                          'assets/images/contatos/instagram-icon.png',
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
