import 'package:flutter/material.dart';
// clases personalizadas
import 'package:componentes_flutter/src/providers/menu_provider.dart';
import 'package:componentes_flutter/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _listar(),
    );
  }

  Widget _listar() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
          /*
          final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route);
          */
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
  // fin class HomePage
}
