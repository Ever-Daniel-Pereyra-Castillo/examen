import 'package:examen/pagina_inicial.dart';
import 'package:flutter/material.dart';
import 'package:examen/pagina_AnimatedIcon.dart';
import 'package:examen/pagina_AppBar.dart';
import 'package:examen/pagina_ClipOval.dart';
import 'package:examen/pagina_DataTable.dart';
import 'package:examen/pagina_Flexible.dart';
import 'package:examen/pagina_PageView.dart';
import 'package:examen/pagina_PagerouteBuilder.dart';
import 'package:examen/pantalla_ChoiceChip.dart';

void main() => runApp(MisRutas());

class MisRutas extends StatelessWidget {
  const MisRutas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
      },
    );
  }
}
