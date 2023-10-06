import 'dart:math';

import 'package:caracoroa/jogar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void exibirResultado(){
    var items = ['cara', 'coroa'];
    var numero = Random().nextInt(items.length);
    var resultado = items[numero];

    Navigator.push(context, MaterialPageRoute(builder: (context)=>Jogar(resultado)));
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Image.asset("images/logo.png"),
          GestureDetector(
            child: Image.asset("images/botao_jogar.png"),
            onTap: exibirResultado,
          )
          ],
        ),
      ),
    );
  }
}