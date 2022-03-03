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
        ItemTransferencia(Transferencia(100.0, "Alex", ehCredito: true)),
        ItemTransferencia(Transferencia(200.0, "Paulo")),
        ItemTransferencia(Transferencia(300.0, "Pedro")),
        ItemTransferencia(Transferencia(300.0, "Pedro", ehCredito: true)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text('R\$' + _transferencia.valor.toString()),
      subtitle: _transferencia.ehCredito
          ? Text('Transferência recebida de ' + _transferencia.nome.toString())
          : Text(
              'Transferência enviada para ' + _transferencia.nome.toString()),
      textColor: _transferencia.ehCredito ? Colors.green : Colors.red,
      iconColor: _transferencia.ehCredito ? Colors.green : Colors.red,
    ));
  }
}

class Transferencia {
  final double valor;
  final String nome;
  final bool ehCredito;

  Transferencia(this.valor, this.nome, {this.ehCredito = false});
}
