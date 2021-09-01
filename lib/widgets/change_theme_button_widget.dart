import 'package:bruno_bergamaschi_portfolio/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Transform.scale(
        scale: 1.3,
        child: Switch.adaptive(
          thumbColor: MaterialStateProperty.all(Colors.white),
          inactiveTrackColor: Color.fromRGBO(237, 242, 244, 1),
          activeTrackColor: Color.fromRGBO(0, 20, 39, 1),
          activeThumbImage:
              AssetImage('assets/images/apresentacao/empire-brands.png'),
          inactiveThumbImage:
              AssetImage('assets/images/apresentacao/jedi-order.png'),
          value: themeProvider.isDarkMode,
          onChanged: (value) {
            final provider = Provider.of<ThemeProvider>(context, listen: false);
            provider.toggleTheme(value);
          },
        ),
      ),
    );
  }
}
