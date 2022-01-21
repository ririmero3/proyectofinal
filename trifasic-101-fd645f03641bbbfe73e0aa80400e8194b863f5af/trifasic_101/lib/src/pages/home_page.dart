import 'package:flutter/material.dart';
import 'package:trifasic_101/src/utils/main_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
  //print("0. Creación del widget");

}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<String> _options = ["Inicio", "Mantenimientos", "Materiales"];

  @override
  void initState() {
    super.initState();
    //print("1. Inicio del widget");
  }

  @override
  Widget build(BuildContext context) {
    //print("2. Construcción del widget");
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Trifasic - ' + _options[_selectedIndex])),
      body: homeWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _selectedIndex = index;
          //print("3. Cambio de estado del widget");
          setState(() {});
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: menuOptions
            .map((e) =>
                BottomNavigationBarItem(icon: Icon(e.icon), label: e.title))
            .toList(),
      ),
    );
  }
}
