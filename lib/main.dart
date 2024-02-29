import 'package:flutter/material.dart';

void main() => runApp(const AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBar Yizzia Monge"),
            bottom: const TabBar(tabs: [
              Tab(
                text: "Horarios",
                icon: Icon(Icons.access_time),
              ),
              Tab(
                text: "Locales",
                icon: Icon(Icons.add_location),
              ),
              Tab(
                text: "Contacto",
                icon: Icon(Icons.add_call),
              ),
              Tab(
                text: "Comida",
                icon: Icon(Icons.apple_rounded),
              ),
            ] //texto icono
                ),
          ),
          body: const TabBarView(children: <Widget>[
            Center(
              child: Text(
                "Alerta",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Opcion 2 ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Opcion 3",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Opcion 4",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ]),
        ));
  }
}
