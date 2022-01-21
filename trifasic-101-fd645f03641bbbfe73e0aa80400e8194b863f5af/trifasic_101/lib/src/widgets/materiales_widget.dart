import 'package:flutter/material.dart';
import 'package:trifasic_101/src/utils/main_menu.dart';

class MaterialesWidget extends StatelessWidget {
  const MaterialesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /*const Icon(Icons.cable, size: 50.0),
            Text('Materiales', style: Theme.of(context).textTheme.headline4),*/
            Expanded(
                child: ListView(
                    children: materiales
                        .map((e) => Card(
                            elevation: 5.0,
                            child: ListTile(
                              trailing: const Icon(Icons.notifications),
                              title: Text(e.title),
                              leading: Icon(e.icon),
                              subtitle: const Text("Descripcion del material"),
                            )))
                        .toList()))
          ],
        ),
      ),
    );
  }
}
