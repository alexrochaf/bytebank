import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: ListaTransferencias(),
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    ),
  ));
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia("100", "Alex"),
        ItemTransferencia("200", "Maria"),
        ItemTransferencia("300", "João"),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final String valor;
  final String nome;

  ItemTransferencia(this.valor, this.nome);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text('R\$' + valor),
      subtitle: Text('Transferência enviada para ' + nome),
      textColor: Colors.red,
      iconColor: Colors.red,
    ));
  }
}
