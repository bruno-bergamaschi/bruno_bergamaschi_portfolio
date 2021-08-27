import 'package:bruno_bergamaschi_portfolio/pages/portfolio.dart';
import 'package:bruno_bergamaschi_portfolio/widgets/texto_box.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color button = Color.fromRGBO(239, 131, 84, 1);
  Color bg = Color.fromRGBO(45, 49, 66, 1);
  Color grayBox = Color.fromRGBO(191, 192, 192, 1);
  Color lightBox = Color.fromRGBO(255, 255, 255, 1);
  Color darkText = Color.fromRGBO(45, 49, 66, 1);
  Color lightText = Color.fromRGBO(255, 255, 255, 1);

  // void launchWhatsApp({
  //   @required String? phone,
  //   @required String? message,
  // }) async {
  //   String url() {
  //     if (Platform.isIOS) {
  //       return "whatsapp://wa.me/$phone/?text=${message!}";
  //     } else {
  //       return ("whatsapp://send?phone=$phone&text=${message!}");
  //     }
  //   }

  //   print(url());

  //   if (await canLaunch(url())) {
  //     await launch(url());
  //   } else {
  //     throw 'Could not launch ${url()}';
  //   }
  // }
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
      body: Container(
        color: bg,
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
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: lightBox,
                        border: Border(),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextoBox(
                        'Bem-vindo ao meu portfólio. Aqui você poderá saber um pouco mais sobre mim e minha jornada no mundo da tecnologia.',
                        darkText)),
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
                        child: Text('Porfólio'),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(button),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      // launchWhatsApp(phone: '555195887955', message: 'Olá!'),
                      openwhatsapp('555195887955', 'Ola!'),
                  child: FaIcon(FontAwesomeIcons.whatsapp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
