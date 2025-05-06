import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaInicial extends StatefulWidget {
  const PantallaInicial({Key? key}) : super(key: key);

  @override
  State<PantallaInicial> createState() => _PantallaInicialState();
}

class _PantallaInicialState extends State<PantallaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Inicial',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 1; i <= 8; i++) ...[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/pantalla$i');
                    },
                    child: Text('Ir a Pantalla $i'),
                  ),
                  const SizedBox(height: 20),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
