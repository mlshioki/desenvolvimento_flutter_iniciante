import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:flutter/material.dart';

/*
List Tile é um widget que exibe uma linha de informações, geralmente usada em listas. 
Ele pode conter um ícone, um título, um subtítulo e um widget de ação (como um botão). 
O ListTile é comumente usado para exibir itens em uma lista, como contatos, mensagens ou configurações. 
Ele é altamente personalizável e pode ser adaptado para atender às necessidades específicas do aplicativo.
*/

class PessoaListTile extends StatelessWidget {
  final Pessoa pessoa;
  const PessoaListTile({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 219, 224),
      child: ListTile(
        leading: Text('id: ${pessoa.id}'),
        title: Text('nome: ${pessoa.nome}'),
        subtitle: Text('altura: ${pessoa.altura}'),
        trailing: Text('peso: ${pessoa.peso}'),
      ),
    );
  }
}