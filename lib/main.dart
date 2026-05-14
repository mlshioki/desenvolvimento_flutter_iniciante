import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/pessoa_listtile.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/stateful_widgets.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/stateless_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: PessoaListTile(
          pessoa: Pessoa(
            id: 1, 
            nome: 'João', 
            altura: 180, 
            peso: 75.5
          ),
        ),
      ),
    );
  }
}
