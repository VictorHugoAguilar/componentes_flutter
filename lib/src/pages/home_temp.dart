import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Web'),
      ),
      // body: ListView(children: _crearItems()),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  // ignore: unused_element
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((opt) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opt),
            subtitle: Text('Subtile'),
            leading: Icon(Icons.account_box),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
