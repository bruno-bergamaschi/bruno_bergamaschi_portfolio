import 'package:bruno_bergamaschi_portfolio/pages/portfolio.dart';
import 'package:bruno_bergamaschi_portfolio/widgets/change_theme_button_widget.dart';
import 'package:bruno_bergamaschi_portfolio/widgets/texto_box.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  openwhatsapp(String num, String texto) async {
    var whatsapp = num;
    var mensagem = texto;
    var whatsappURlAndroid = "whatsapp://send?phone=$whatsapp&text=$mensagem";
    var whatappURLIos = "https://wa.me/$whatsapp?text=${Uri.parse(mensagem)}";
    if (Platform.isIOS) {
      // for iOS phone only
      await launch(whatappURLIos, forceSafariVC: true);
    } else {
      // android , web
      await launch(whatsappURlAndroid);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 180,
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
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'Olá, eu sou o Bruno!',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        border: Border(),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextoBox(
                        'Bem-vindo ao meu portfólio. Aqui você poderá saber um pouco mais sobre mim e minha jornada no mundo do desenvolvimento.')),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 50),
                        child: Text(
                          'Portfólio',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).buttonColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FloatingActionButton(
                    onPressed: () =>
                        // launchWhatsApp(phone: '555195887955', message: 'Olá!'),
                        openwhatsapp('555195887955', 'Ola!'),
                    child: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Theme.of(context).iconTheme.color,
                      size: 30,
                    ),
                    backgroundColor: Theme.of(context)
                        .floatingActionButtonTheme
                        .backgroundColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
