import 'package:flutter/material.dart';

import 'mensagem.view.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MensagemView(),
    );
  }
}