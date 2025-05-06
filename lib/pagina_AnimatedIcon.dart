import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaUno extends StatefulWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  State<PantallaUno> createState() => _PantallaUnoState();
}

class _PantallaUnoState extends State<PantallaUno>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool videoPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  void _iconTapped() {
    if (!videoPlaying) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    setState(() {
      videoPlaying = !videoPlaying;
    });
  }

  @override
  void dispose() {
    _animationController.dispose(); // liberar recursos
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('Animated Icon'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _animationController,
            size: 150,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
